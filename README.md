# doitt-expire-notif

This repo will serve as the space for the greenfield project requested by Matt. In short, we are going live with Oracle 19c in August and need a sort of system to notify users of the new databases that their passwords are nearing expiration. 

note: any actual emails, names, servers, and databases have been omitted for security purposes

# Requirements
1.	Given a list of users and their user schemas that we support. Something like:
 
 
 | NAME        | SCHEMA           | EMAIL  |
| ------------- |:-------------:| -----:|
| User1      | USER1 | USER1@email.com |
| User2      | USER2      |   USER2@email.com |
| User3    | USER3      |   USER2@email.com |

                                
2.	Any application schema (passwords do not expire) connecting to one of our 6 new databases.  
 
 - devdb1
 - devdb2
 - stgdb1
 - stgdb2
 - prddb1
 - prddb2

 
3.	This helpful DBA view
 
```select * from system.ORACLE_USERS```
 
 
 
  | USERNAME        | PROFILE           | ACCOUNT_STATUS  | EXPIRATION_DATE |
| ------------- |:-------------:| -----:| ---------|
| USER1      | DB_USER_PROFILE | OPEN | 03-AUG-21 |
| USER2      | DB_USER_PROFILE      |   LOCKED | 03-JUN-21 |
| USER3      | DB_USER_PROFILE      |   OPEN | 03-AUG-21 |



4.	An output email sent, in the case of the data above, to User1 (user1@doitt)
 
To: user1@email.com
From: our-dev-group@email.com
 
Dear User1,
 
Your friends at OurCompany would like you to know that your schema USER1 on devdb1 will experience password expiration on August 3rd!  
 
Here are some resources on password resets:
Link1, link2
 
Love,
OurCompany

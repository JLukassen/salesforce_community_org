public with sharing class ContactManager {

    public static void processBefore(List<Contact> newList) {

         
        Account backupAccount =  [ 
            SELECT
                Id
            FROM
                Account
            WHERE 
                Is_Secondary_Account__c = true
            
            LIMIT 1
        ];

        for (Contact newContact : newList){
            newContact.Secondary_Account__c = backupAccount.Id;
        }
    }   
    
}
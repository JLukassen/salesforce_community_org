public with sharing class ContactManager {

    public static void processBefore() {        
        
        List<Contact> newList = [
            SELECT 
                Id,
                Secondary_Account__c
            FROM 
                Contact
           WHERE
                Secondary_Account__c = true
        ];

        Contact.Secondary_Account__c = Id;


    }   
    
    Map<Id, Contact> newMap = new Map<Id, Contact>();

    List<Contact> oldList = new List<Contact>();    

    Map<Id, Contact> oldMap = new Map<Id, Contact>();

}
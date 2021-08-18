public with sharing class customerList {
    @AuraEnabled
    public static List<Contact> getFiveMostRecentContacts(){
        return [
            SELECT 
                Id, 
                Name, 
                Phone, 
                Email, 
                CreatedDate 
            FROM 
                Contact 
            ORDER BY 
                CreatedDate 
            DESC LIMIT 5
        ];
    }
    
    @AuraEnabled
    public static Id getMostRecentContactsId(){
        return [
            SELECT 
                Id
            FROM 
                Contact 
            ORDER BY 
                CreatedDate 
            DESC LIMIT 1
        ][0].Id;
    }

}
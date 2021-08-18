public with sharing class editForm {
    @AuraEnabled
    public static Id getContactId(){
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
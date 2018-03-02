public with sharing class AccountController {
    public AccountController() {

    }
    @AuraEnabled
    public static List<Account> findAll(){
        return [SELECT Id,Name,Location__latitude__s,Location__Longitude__s
                FROM Account 
                WHERE Location__latitude__s != NULL AND Location__Longitude__s != NULL
                LIMIT 50];
                    
    }
}

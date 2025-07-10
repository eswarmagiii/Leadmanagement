/**
 * @Author: Eswarmagi
 * @Created: 2025-05-02
 * @Description: 
 **/
public with sharing class HotLeadsController {
    @AuraEnabled(cacheable=true)
    public static List<Lead> getTopHotLeads() {
        return [SELECT Id, Name, Status, Priority__c 
                FROM Lead 
                WHERE Priority__c = 'High' 
                ORDER BY CreatedDate DESC 
                LIMIT 5];
    }
}

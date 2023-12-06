public with sharing class APILogsManager {
    
// Function to fill API logs data
public static void fillAPILogsData(String storeURL, String action, String url, 
                                String requestBody, String responseBody, String status) {
if (requestBody.length() > 131072) 
{
    requestBody = requestBody.substring(0, 131072);
}
if (responseBody.length() > 131072) 
{
    responseBody = responseBody.substring(0, 131072);
}
API_Logs__c apiLog = new API_Logs__c();
apiLog.Name = storeURL+'-'+action;
apiLog.StoreURL__c = storeURL;
apiLog.Action__c = action;
apiLog.URL__c = url;
apiLog.Request_Body__c = requestBody;
apiLog.Response_Body__c = responseBody;
apiLog.Status__c = status;

// Insert the API log record
insert apiLog;
}
}
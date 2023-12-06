public with sharing class InitialAuthentication {
    public static InitialAuthenticationWrapper InitialAuthenticationShopiforce(String storeURL, String email, String accessToken) 
    {
        try {
            {
                String endPoint = 'https://'+storeURL+'/admin/api/2021-07/shop.json';
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('X-Shopify-Access-Token', accessToken);
        //String requestBody = '{"authenticateTestRequest":{"merchantAuthentication":{"name":"' + authorizeNetApiLoginId + '","transactionKey":"' + authorizeNetTransactionKey + '"}}}';
        //req.setBody(requestBody);

        Http http = new Http();
        HttpResponse res = http.send(req);
        // Fill Logs
        APILogsManager.fillAPILogsData(storeURL, 'Authenticate Shopify', endPoint, String.valueOf(req), String.valueOf(res.getBody()), String.valueOf(res.getStatusCode()));
        InitialAuthenticationWrapper response = (InitialAuthenticationWrapper)JSON.deserialize(res.getBody(), InitialAuthenticationWrapper.class);
        return response;
        
         }
        } catch (Exception e) {
            system.debug('Exception :: '+e.getMessage());
            InitialAuthenticationWrapper exceptionReponse = new InitialAuthenticationWrapper();
            if (e.getMessage().contains('Unauthorized endpoint')) {
                // Extract the unauthorized endpoint from the message
                exceptionReponse.errors = e.getMessage().substringBefore('myshopify.com')+ 'myshopify.com';
            }
            else {
                {
                    exceptionReponse.errors = e.getMessage();
                }
            }
            system.debug('exceptionReponse  :: '+exceptionReponse);
            return exceptionReponse;
        }
        
    }
}
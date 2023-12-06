public with sharing class InitialAuthenticationWrapper {
    public class Shop {
        @AuraEnabled
        public String id;
        @AuraEnabled
        public String name;
        @AuraEnabled
        public String email;
        @AuraEnabled
        public String domain;
        @AuraEnabled
        public String province;
        @AuraEnabled
        public String country;
        @AuraEnabled
        public String address1;
        @AuraEnabled
        public String zip;
        @AuraEnabled
        public String city;
        @AuraEnabled
        public String source;
        @AuraEnabled
        public String phone;
        @AuraEnabled
        public String latitude;
        @AuraEnabled
        public String longitude;
        @AuraEnabled
        public String primary_locale;
        @AuraEnabled
        public String address2;
        @AuraEnabled
        public String created_at;
        @AuraEnabled
        public String updated_at;
        @AuraEnabled
        public String country_code;
        @AuraEnabled
        public String country_name;
        @AuraEnabled
        public String customer_email;
        @AuraEnabled
        public String timezone;
        @AuraEnabled
        public String iana_timezone;
        @AuraEnabled
        public String shop_owner;
        @AuraEnabled
        public String money_format;
        @AuraEnabled
        public String money_with_currency_format;
        @AuraEnabled
        public String weight_unit;
        @AuraEnabled
        public String province_code;
        @AuraEnabled
        public Boolean taxes_included;
        @AuraEnabled
        public String auto_configure_tax_inclusivity;
        @AuraEnabled
        public String tax_shipping;
        @AuraEnabled
        public Boolean county_taxes;
        @AuraEnabled
        public String plan_display_name;
        @AuraEnabled
        public String plan_name;
        @AuraEnabled
        public Boolean has_discounts;
        @AuraEnabled
        public Boolean has_gift_cards;
        @AuraEnabled
        public String myshopify_domain;
        @AuraEnabled
        public String google_apps_domain;
        @AuraEnabled
        public String google_apps_login_enabled;
        @AuraEnabled
        public String money_in_emails_format;
        @AuraEnabled
        public String money_with_currency_in_emails_format;
        @AuraEnabled
        public Boolean eligible_for_payments;
        @AuraEnabled
        public Boolean requires_extra_payments_agreement;
        @AuraEnabled
        public Boolean password_enabled;
        @AuraEnabled
        public Boolean has_storefront;
        @AuraEnabled
        public Boolean finances;
        @AuraEnabled
        public String primary_location_id;
        @AuraEnabled
        public Boolean checkout_api_supported;
        @AuraEnabled
        public Boolean multi_location_enabled;
        @AuraEnabled
        public Boolean setup_required;
        @AuraEnabled
        public Boolean pre_launch_enabled;
        @AuraEnabled
        public List<String> enabled_presentment_currencies;
        @AuraEnabled
        public Boolean transactional_sms_disabled;
        @AuraEnabled
        public Boolean marketing_sms_consent_enabled_at_checkout;
        
    }
    @AuraEnabled
    public String errors;
    @AuraEnabled
    public Shop shop;
}

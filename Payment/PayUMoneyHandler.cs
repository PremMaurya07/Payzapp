﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Configuration;
namespace Payment
{
    public class PayUMoneyHandler
    {
        // these are required parameters
        public String AMOUNT { get; set; }
        public String FIRSTNAME { get; set; }
        public String EMAIL { get; set; }
        public String PHONE { get; set; }
        public String PRODUCT_INFO { get; set; }
        public String SUCCESS_URL { get; set; }
        public String FAILURE_URL { get; set; }
        public string SERVICE_PROVIDER { get; set; }
        public String ORDER_ID { get; set; }
        public String MERCHANT_KEY { get; set; }

        // These are optional parameter
        public string lastName { get; set; }
        public string cancleUrl { get; set; }
        public string address1 { get; set; }
        public string address2 { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string country { get; set; }
        public string zip { get; set; }
        public string u1 { get; set; }
        public string u2 { get; set; }
        public string u3 { get; set; }
        public string u4 { get; set; }
        public string u5 { get; set; }
        public string pg { get; set; }


        public PayUMoneyHandler(String OrderId, String Amount, String FirstName, String Email, String Phone, String ProductInfo)
        {
            MERCHANT_KEY = ConfigurationManager.AppSettings["MERCHANT_KEY"];
            ORDER_ID = OrderId;
            AMOUNT = Amount;
            FIRSTNAME = FirstName;
            EMAIL = Email;
            PHONE = Phone;
            PRODUCT_INFO = ProductInfo;
            SUCCESS_URL = "http://localhost:59667/PayUMoney/ResponseHandling.aspx";
            FAILURE_URL = "http://localhost:59667/PayUMoney/false.aspx";
            SERVICE_PROVIDER = "payu_paisa";
            lastName = "";
            cancleUrl = FAILURE_URL;
            address1 = "";
            address2 = "";
            city = "";
            country = "";
            zip = "";
            state = "";
            u1 = "";
            u2 = "";
            u3 = "";
            u4 = "";
            u5 = "";
            pg = "";
            u1 = "";
        }


    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using e_PayZapp.Repository;
using e_PayZapp.Repository.Data.Model;
using e_PayZapp.Repository.Data.DataRepository;
using e_PayZapp.Repository.ServerValidation;
namespace e_Payzapp.web.CustomeApi
{
    public class ePayZappController : ApiController
    {
        public Response<int> EpayZappInsert(ePayZappUser dt)
        {
            int result = 0;
            int check;
            RegexUtilities regex = new RegexUtilities();
            Response<int> objresponse = new Response<int>();
           if (string.IsNullOrEmpty(dt.FName) == false && string.IsNullOrEmpty(dt.Mobile) == false && string.IsNullOrEmpty(dt.Password) == false && string.IsNullOrEmpty(dt.EmailAddress) == false)
           {

                if (!DataValidation.IsNumeric(dt.Mobile))
                {
                    result = -2;
                    objresponse.Create(false, 0, "Only Numeric Value!", result);
                }
                else if (dt.Mobile.Length !=10)
                {
                    result = -5;
                    objresponse.Create(false, 0, "Invalid Mobile Number!", result);
                }
                else if (dt.Password.Length < 8)
                {
                    result = -6;
                    objresponse.Create(false, 0, "Minmum 8 digit Password!", result);
                }
                else if (!regex.IsValidEmail(dt.EmailAddress))
                {
                    result = -3;
                    objresponse.Create(false, 0, "Invalid Email Address Format!", result);
                }
                else
                {
                    AcceesByPremMaurya extension = new AcceesByPremMaurya();
                    check = extension.AddEpayZappUser(dt);
                    if (check > 0)
                    {
                        result = check;
                        objresponse.Create(true, 0, "Data inserted successfully!", result);
                    }
                    else if (check == -1)
                    {
                        result = check;
                        objresponse.Create(false, 1, "Email is already exist!", result);
                    }
                    else
                    {
                        result = check;
                        objresponse.Create(false, 1, "Data is not insert!", result);
                    }
                }
           }
           else
           {
                result = -4;
               objresponse.Create(false, 2, "Please fill the data correctly", result);
          }
            return objresponse;
        }
    }
}

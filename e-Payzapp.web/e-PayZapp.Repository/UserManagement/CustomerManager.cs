using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using e_PayZapp.Repository.Data.Model;
using System.Web;

namespace e_PayZapp.Repository.UserManagement
{
   public class CustomerManager
    {


        public static KeyValuePair<bool,string> Authenticate(ePayZappUser EpayZappUserAuth)
        {
            ePayZappUser EpayZappUserAuthpass = new ePayZappUser();
            EpayZappUserAuthpass.EmailAddress = EpayZappUserAuth.EmailAddress;
            EpayZappUserAuthpass.Password = EpayZappUserAuth.Password;
            bool Auth = false;
            string token = "false";
            using (SqlConnection cnn = e_PayZapp.connection.ePayZappConnection.SetConnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EpayZappUserAuthenticate";

                    cmd.Parameters.Add(new SqlParameter("@EmailAddress", EpayZappUserAuth.EmailAddress.ToLower()));
                    cmd.Connection.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            EpayZappUserAuthpass.Password = (string)reader["Password"];
                            EpayZappUserAuthpass.Id = (long)reader["Id"];
                          
                        if (PasswordEncryption.VerifyHash(EpayZappUserAuth.Password, "SHA512", EpayZappUserAuthpass.Password))
                        {
                            token = LoginToken(EpayZappUserAuthpass);
                            if (token != "false")
                            {
                               Auth = true;
                            }
                          
                        }
                          break;
                        }
                    }
                    cmd.Connection.Close();
               
            }
            return new KeyValuePair<bool, string>(Auth,token);
        }


        #region e-PayZapp Add New User
        internal static string LoginToken(ePayZappUser ePayZappUserID)
        {
            string result = "";
            using (SqlConnection cnn = e_PayZapp.connection.ePayZappConnection.SetConnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "USERTokenGenerate";
                result = Guid.NewGuid().ToString();
                cmd.Parameters.Add(new SqlParameter("@Id", ePayZappUserID.Id));
                cmd.Parameters.Add(new SqlParameter("@Token", result));

                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();


            }
            return result;
        }
        #endregion

       

    }
}

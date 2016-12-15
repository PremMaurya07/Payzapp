using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace e_PayZapp.Repository.Data.Model
{
    public class MakePayment
    {
        public int ClientId { get; set; }
        public double Amount { get; set; }
        public int ProviderId { get; set; }
        public string MobileNo { get; set; }
    }
        public class ePayZappUser
    {
        private long _Id;
        private string _FName;
        private string _LName;
        private string _Mobile;
        private string _Password;
        private string _EmailAddress;
        private string _ProfileImage;
        private char _Gender;
        private DateTime _DateOfBirth;
        private bool _UserStatus;
        private bool _EmailVerify;
        private DateTime _RegisterDate;
        private string _LoginToken;
        public long Id{
            get { return this._Id; } set { this._Id=value; }
        }
        public string FName
        {
            get { return this._FName; }
            set {  this._FName=value; }
        }
        public string LName
        {
            get { return this._LName; }
            set {  this._LName=value; }
        }

        public string Mobile
        {
            get { return this._Mobile; }
            set {  this._Mobile=value; }
        }

        public string Password
        {
            get { return this._Password; }
            set { this._Password=value; }
        }

        public string EmailAddress
        {
            get { return this._EmailAddress; }
            set { this._EmailAddress=value; }
        }

        public string ProfileImage
        {
            get { return this._ProfileImage; }
            set { this._ProfileImage=value; }
        }
        public char Gender
        {
            get { return this._Gender; }
            set { this._Gender=value; }
        }
        public DateTime DateOfBirth
        {
            get { return this._DateOfBirth; }
            set {this._DateOfBirth=value; }
        }

        public bool UserStatus
        {
            get { return this._UserStatus; }
            set { this._UserStatus=value; }
        }
        public bool EmailVerify
        {
            get { return this._EmailVerify; }
            set {  this._EmailVerify=value; }
        }
        public DateTime RegisterDate
        {
            get { return this._RegisterDate; }
            set { this._RegisterDate=value; }
        }
        public string LoginToken
        {
            get { return this._LoginToken; }
            set { this._LoginToken = value; }
        }
        

    }
}

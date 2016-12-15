using System;
namespace e_PayZapp.Repository
{
    [Serializable]
    public class Response<T>
    {
        public bool Success;
        public Int16 Error;
        public string Message;
        public T Result;

        public void Create(bool success, Int16 error, string message, T result)
        {
            this.Success = success;    //Error Status
            this.Error = error;       //0-No error, 1-Database error, 2-Empty Data (further errors no. will be shared as per the requirements)
            this.Message = message;  //return any message
            this.Result = result;   //return data for ex. id,name etc
        }

    }
    public sealed class AcceesByPremMaurya
    {
    }
}

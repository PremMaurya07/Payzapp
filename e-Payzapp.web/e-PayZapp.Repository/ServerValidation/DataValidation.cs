using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace e_PayZapp.Repository.ServerValidation
{
   public class DataValidation
    {
        #region Check String Value Only Numeric Value
        public static bool IsNumeric(string value)
        {
            try
            {
                char[] chars = value.ToCharArray();
                foreach (char c in chars)
                {
                    if (!char.IsNumber(c))
                        return false;
                }
                return true;
            }
            catch (Exception ex) {
                return false;
            }

        }
        #endregion


    }
}

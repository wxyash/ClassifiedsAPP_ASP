using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Security.Cryptography;
using System.Data.SqlClient;
namespace passwordHasher
{



    public class hashPass
    {
        public hashPass()
        {
        }

        public bool registerUser()
        {
            return false;
        }

        public bool loginUser()
        {
            return false;
        }

        public string generateSalt(int size)
        {
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] salt = new byte[size];
            rng.GetBytes(salt);
            return Convert.ToBase64String(salt);
        }

        public string generateHash(string plainText, string salt)
        {
            byte[] saltedPlainText = System.Text.Encoding.UTF8.GetBytes(plainText + salt);
            SHA256Managed sha256 = new SHA256Managed();
            byte[] hashBytes = sha256.ComputeHash(saltedPlainText);
            return Convert.ToBase64String(hashBytes);
        }

    }
}
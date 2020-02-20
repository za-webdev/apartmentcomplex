using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DbAccess
{
    public class OwnerRepo
    {
        readonly string connectionString = WebConfigurationManager.ConnectionStrings["DataBaseConnection"].ConnectionString;
        public void AddOwnerInfo(Owner owner)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("[dbo].[UpSert_OwnerData]", connection)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                cmd.Parameters.Add("@OwnerID", SqlDbType.NVarChar).Value = owner.Id;
                cmd.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = owner.FirstName;
                cmd.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = owner.LastName;
                cmd.Parameters.Add("@PhoneNumber", SqlDbType.NVarChar).Value = owner.PhoneNumber;
                cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = owner.Email;
                cmd.Parameters.Add("@UnitNumber ", SqlDbType.NVarChar).Value = owner.UnitNumber;
                cmd.Parameters.Add("@ApartmentNumber ", SqlDbType.NVarChar).Value = owner.ApartmentNumber;
                connection.Open();
                cmd.ExecuteReader();
                connection.Close();
            }
        }
        public int ValidateOwnerInfo(string email,string apartmentNum)
        {
            int ownerId = 0;
            using (var connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("[dbo].[ValidateOwnerInfo]", connection)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
                cmd.Parameters.Add("@ApartmentNumber", SqlDbType.NVarChar).Value = apartmentNum;
                connection.Open();
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        ownerId = reader["OwnerId"] != DBNull.Value ? Convert.ToInt32(reader["OwnerId"]) : 0;
                    }
                }
                connection.Close();
            }
                return ownerId;
           
        }
    }
}

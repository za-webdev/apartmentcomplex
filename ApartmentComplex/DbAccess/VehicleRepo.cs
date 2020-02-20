using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;
using Models;

namespace DbAccess
{
    public class VehicleRepo
    {
        readonly string connectionString = WebConfigurationManager.ConnectionStrings["DataBaseConnection"].ConnectionString;
        /// <summary>
        /// Insert a new vehicle info.
        /// </summary>
        /// <param name="vehicle">The vehicle object</param>
        /// <param name="ownerId">The id of the vehicle owner.</param>
        public void AddVehicleInfo(Vehicle vehicle,int ownerId)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("[dbo].[UpSert_VehicleData]", connection)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                cmd.Parameters.Add("@OwnerID", SqlDbType.Int).Value = ownerId;
                cmd.Parameters.Add("@Color", SqlDbType.NVarChar).Value = vehicle.Color;
                cmd.Parameters.Add("@Model", SqlDbType.NVarChar).Value = vehicle.Model;
                cmd.Parameters.Add("@Make", SqlDbType.NVarChar).Value = vehicle.Make;
                cmd.Parameters.Add("@RegistrationNumber", SqlDbType.NVarChar).Value = vehicle.RegistrationNumber;
                cmd.Parameters.Add("@VehicleID ", SqlDbType.Int).Value = vehicle.VehicleId;
                connection.Open();
                cmd.ExecuteReader();
                connection.Close();
            }
        }

        /// <summary>
        /// Gets the info of owner and vehicle by registartion number
        /// </summary>
        /// <param name="registrationNumber">The registration number of the vehicle</param>
        /// <returns>The owner and vehhicle objects.</returns>
        public OwnerVehicleViewModel GetOwnerVehicleInfo(string registrationNumber)
        {
            var viewModel = new OwnerVehicleViewModel();
            
            var Num = registrationNumber;
            using (var connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("[dbo].[GetOwnerVehicleInfoByRegistrationNumber]", connection)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                cmd.Parameters.Add("@RegistrationNumber", SqlDbType.NVarChar).Value = registrationNumber;
                connection.Open();
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        viewModel.VehicleInfo = new Vehicle()
                        {
                            VehicleId = reader["VehicleId"] is DBNull ? 0 : Convert.ToInt32(reader["VehicleId"]),
                            Make = reader["Make"] is DBNull ? string.Empty : Convert.ToString(reader["Make"]),
                            Color = reader["Color"] is DBNull ? string.Empty : Convert.ToString(reader["Color"]),
                            Model = reader["Model"] is DBNull ? string.Empty : Convert.ToString(reader["PhoneNumber"]),
                            RegistrationNumber = reader["RegistrationNumber"] is DBNull ? string.Empty : Convert.ToString(reader["RegistrationNumber"]),
                            RegistrationDate = Convert.ToDateTime(reader["RegistrationDate"]),

                        };
                        viewModel.OwnerInfo = new Owner()
                        {
                            FirstName = reader["FirstName"] is DBNull ? string.Empty : Convert.ToString(reader["FirstName"]),
                            LastName = reader["LastName"] is DBNull ? string.Empty : Convert.ToString(reader["LastName"]),
                            ApartmentNumber = reader["ApartmentNumber"] is DBNull ? string.Empty : Convert.ToString(reader["ApartmentNumber"]),
                            Email = reader["Email"] is DBNull ? string.Empty : Convert.ToString(reader["Email"]),
                            PhoneNumber = reader["PhoneNumber"] is DBNull ? string.Empty : Convert.ToString(reader["PhoneNumber"]),
                            UnitNumber = reader["FirstName"] is DBNull ? string.Empty : Convert.ToString(reader["UnitNumber"]),
                            Id = reader["OwnerId"] is DBNull ? 0 : Convert.ToInt32(reader["OwnerId"]),
                        };
                    }
                }
                connection.Close();
            }
            return viewModel;

        }
    }
}

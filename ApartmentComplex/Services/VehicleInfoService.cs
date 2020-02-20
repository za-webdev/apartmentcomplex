using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DbAccess;
using ApartmentComplex.Models;
using Models;

namespace Services
{
    public class VehicleInfoService
    {
        private VehicleRepo _vehicleRepo;
        public VehicleInfoService()
        {
            _vehicleRepo = new VehicleRepo();
        }
        /// <summary>
        /// Insert a vehicle record.
        /// </summary>
        /// <param name="vehicleInfo">The vheicle object</param>
        /// <param name="ownerId">The id of the vehicle owner</param>
        public void AddVehicleInfo(Vehicle vehicleInfo,int ownerId)
        {
            if (vehicleInfo != null)
            {
                _vehicleRepo.AddVehicleInfo(vehicleInfo, ownerId);
            }
        }
        /// <summary>
        ///Gets the info of owner and vehicle n=by registartion number
        /// </summary>
        /// <param name="registrationNumber">The vehicle registartion number</param>
        /// <returns>Owner and Vehicle objects.</returns>
        public OwnerVehicleViewModel GetOwnerVehicleInfoByRegistrationNum(string registrationNumber)
        {
           return _vehicleRepo.GetOwnerVehicleInfo(registrationNumber);
        }
    }
}

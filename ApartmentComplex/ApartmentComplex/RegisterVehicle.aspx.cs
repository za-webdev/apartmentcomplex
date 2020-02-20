using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Services;
using Models;

namespace ApartmentComplex
{
    public partial class RegisterVehicle : System.Web.UI.Page
    {
        private VehicleInfoService _vehicleInfoService;
        public RegisterVehicle()
        {
            _vehicleInfoService = new VehicleInfoService();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnClick_RegisterVehicle(object sender, EventArgs e)
        {
            var ownerId = Convert.ToInt32(Request.QueryString["ownerId"]);
            if (CheckForEmptyValues())
            {
                var info = new Vehicle
                {
                  VehicleId = 0,
                  Make = Make.Text,
                  Model = Model.Text,
                  Color = Color.Text,
                  RegistrationNumber = RegistrationNum.Text
                };

                _vehicleInfoService.AddVehicleInfo(info, ownerId);
                successMsg.Text = "Your vehicle has been registered successfully!";
            }
        }
        protected void OnClick_Cancel(object sender, EventArgs e)
        {
            Response.Redirect(@"\Dashboard.aspx");
        }
        public bool CheckForEmptyValues()
        {
            if (string.IsNullOrWhiteSpace(Make.Text)
                && string.IsNullOrWhiteSpace(Model.Text)
                && string.IsNullOrWhiteSpace(Color.Text)
                && string.IsNullOrWhiteSpace(RegistrationNum.Text))
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}
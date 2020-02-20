using Models;
using Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApartmentComplex
{
    public partial class VehicleInfo : System.Web.UI.Page
    {
        private VehicleInfoService _vehicleInfoService;
        private OwnerInfoService _ownerInfoService;
        public VehicleInfo()
        {
            _vehicleInfoService = new VehicleInfoService();
            _ownerInfoService = new OwnerInfoService();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var registrationNumber = Request.QueryString["RegistrationNumber"];
            if (!IsPostBack)
            {
                var data = _vehicleInfoService.GetOwnerVehicleInfoByRegistrationNum(registrationNumber);
                if(data.OwnerInfo == null && data.VehicleInfo == null)
                {
                    Response.Redirect(@"\Dashboard.aspx?Error=Invalid registration number");
                }
                LoadControls(data);
            }
        }
        public void LoadControls(OwnerVehicleViewModel data)
        {
            // load Owner info
            FName.Text = data.OwnerInfo.FirstName;
            Lname.Text = data.OwnerInfo.LastName;
            PhoneNum.Text = data.OwnerInfo.PhoneNumber;
            EmailAdd.Text = data.OwnerInfo.Email;
            UnitNum.Text = data.OwnerInfo.UnitNumber;
            ApartmentNum.Text = data.OwnerInfo.ApartmentNumber;
            OwnerId.Value = Convert.ToString(data.OwnerInfo.Id);

            //load Vehicle info

            Make.Text = data.VehicleInfo.Make;
            Model.Text = data.VehicleInfo.Model;
            Color.Text = data.VehicleInfo.Color;
            RegistrationNum.Text = data.VehicleInfo.RegistrationNumber;
            RegistrationDate.Text = Convert.ToString(data.VehicleInfo.RegistrationDate);
            VehicleId.Value = Convert.ToString(data.VehicleInfo.VehicleId);
        }
        protected void OnClick_Update(object sender, EventArgs e)
        {
            var ownerInfo = new Owner
            {
                Id = Convert.ToInt32(OwnerId.Value),
                FirstName = FName.Text,
                LastName = Lname.Text,
                PhoneNumber = PhoneNum.Text,
                Email = EmailAdd.Text,
                UnitNumber = UnitNum.Text,
                ApartmentNumber = ApartmentNum.Text,
            };

            var vehicleInfo = new Vehicle
            {
                VehicleId = Convert.ToInt32(VehicleId.Value),
                Make = Make.Text,
                Model = Model.Text,
                Color = Color.Text,
                RegistrationNumber = RegistrationNum.Text
            };

            _vehicleInfoService.AddVehicleInfo(vehicleInfo, Convert.ToInt32(OwnerId.Value));

            _ownerInfoService.AddownerInfo(ownerInfo);

            successMsg.Text = "Updated Successfully!";
        }
        protected void OnClick_Cancel(object sender, EventArgs e)
        {
            Response.Redirect(@"\Dashboard.aspx");
        }
    }
}
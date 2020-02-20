using Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApartmentComplex
{
    public partial class Dashboard : System.Web.UI.Page
    {
        private VehicleInfoService _vehicleInfoService;
        private OwnerInfoService _ownerInfoService;

        public Dashboard()
        {
            _vehicleInfoService = new VehicleInfoService();
            _ownerInfoService = new OwnerInfoService();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var errorMsg = Request.QueryString["Error"]; 
            if(errorMsg != null)
            {
                Error.Text = errorMsg;
            }
        }

        protected void OnClick_Register(object sender, EventArgs e)
        {
            Response.Redirect(@"\RegisterOwner.aspx");
        }
        protected void OnClick_Search(object sender, EventArgs e)
        {
            var registrationNumber = RegistrationNum.Text;
            if(!string.IsNullOrWhiteSpace(registrationNumber))
            {
                Response.Redirect(@"\VehicleInfo.aspx?RegistrationNumber=" + registrationNumber);
            }

        }
        protected void OnClick_Submit(object sender, EventArgs e)
        {
            var email = EmailAddress.Text;
            var apartmentNum = ApartmentNum.Text;
            if (!string.IsNullOrWhiteSpace(email) || !string.IsNullOrWhiteSpace(apartmentNum))
            {
                var ownerId = _ownerInfoService.ValidateOwnerInfo(email, apartmentNum);
                if (ownerId <= 0)
                {
                    Error.Text = "Invalid information";
                }
                else
                {
                    Response.Redirect(@"\RegisterVehicle.aspx?ownerId=" + ownerId);
                }
            }
        }
    }
}
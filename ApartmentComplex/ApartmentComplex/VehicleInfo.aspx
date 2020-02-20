<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VehicleInfo.aspx.cs" Inherits="ApartmentComplex.VehicleInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Owner and Vehicle information page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="css\customStyle.css"/>
    
</head>
<body>
    <div class="success">
        <asp:Label runat="server" ID="successMsg"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div class="outterDiv">
            <div id="OwnerInfoDiv">
                <h1>Owner's Information</h1>
                <asp:Label ID="FisrtName" runat="server" Text="First Name:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="FName" runat="server"></asp:TextBox>
       
                    <asp:Label ID="LastName" runat="server" Text="Last Name:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="Lname" runat="server"></asp:TextBox>
        
                    <asp:Label ID="Phone" runat="server" Text="Phone Number:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="PhoneNum" runat="server"></asp:TextBox>

                    <asp:Label ID="Email" runat="server" Text="Email:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="EmailAdd" runat="server"></asp:TextBox>

                    <asp:Label ID="Unit" runat="server" Text="Unit Number:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="UnitNum" runat="server"></asp:TextBox>
       
                    <asp:Label ID="Apartment" runat="server" Text="Apartment Number:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="ApartmentNum" runat="server"></asp:TextBox>
            </div>
            <div id="VehicleInfoDiv">
                <h1>Vehicle's Information</h1>
                 <asp:Label ID="Vmake" runat="server" Text="Vehicle Make:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="Make" runat="server"></asp:TextBox>
       
                    <asp:Label ID="Vmodel" runat="server" Text="Vehicle Model:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="Model" runat="server"></asp:TextBox>
        
                    <asp:Label ID="Vcolor" runat="server" Text="Vehicle Color:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="Color" runat="server"></asp:TextBox>
       
                    <asp:Label ID="VregistrationNum" runat="server" Text="Vehicle's Registration number:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="RegistrationNum" runat="server"></asp:TextBox>

                    <asp:Label ID="VRegistrationDate" runat="server" Text="Vehicle's Registration Date:"></asp:Label>
                    &nbsp;<asp:TextBox CssClass="form-control" ID="RegistrationDate" runat="server" ReadOnly="true"></asp:TextBox>
                    <br />
                    <asp:Button class="btn btn-primary btn-md" runat="server" Text="Update" ID="Update" OnClick="OnClick_Update"/>
                    <asp:Button class="btn btn-danger btn-md" runat="server" Text="Cancel" ID="Cancel" OnClick="OnClick_Cancel"/>

            </div>
            <asp:HiddenField runat="server" ID="OwnerId" />
            <asp:HiddenField runat="server" ID="VehicleId" />
        </div>
    </form>
</body>
</html>

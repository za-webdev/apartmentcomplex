<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterVehicle.aspx.cs" Inherits="ApartmentComplex.RegisterVehicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Vehicle</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
   <link rel="stylesheet" type="text/css" href="css\customStyle.css"/>

</head>
<body>
    <div class="success">
        <asp:Label runat="server" ID="successMsg"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div class="wrapperDiv">
            <h1>Vehical Registration</h1>
                 <asp:Label ID="Vmake" runat="server" Text="Vehicle Make:"></asp:Label>
                &nbsp;<asp:TextBox CssClass="form-control" ID="Make" runat="server"></asp:TextBox>
       
                <asp:Label ID="Vmodel" runat="server" Text="Vehicle Model:"></asp:Label>
                &nbsp;<asp:TextBox CssClass="form-control" ID="Model" runat="server"></asp:TextBox>
        
                <asp:Label ID="Vcolor" runat="server" Text="Vehicle Color:"></asp:Label>
                &nbsp;<asp:TextBox CssClass="form-control" ID="Color" runat="server"></asp:TextBox>
       
                <asp:Label ID="VregistrationNum" runat="server" Text="Vehicle's Registration number:"></asp:Label>
                &nbsp;<asp:TextBox CssClass="form-control" ID="RegistrationNum" runat="server"></asp:TextBox>
                <br />
                <asp:Button class="btn btn-primary btn-md" runat="server" Text="Register" ID="RegisterOwner" OnClick="OnClick_RegisterVehicle"/>
                <asp:Button class="btn btn-danger btn-md" runat="server" Text="Cancel" ID="Cancel" OnClick="OnClick_Cancel"/>

            </div>
               
    </form>
</body>
</html>

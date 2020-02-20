<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ApartmentComplex.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
     <link rel="stylesheet" type="text/css" href="css\customStyle.css"/>
    
</head>
<body>
    <form id="form1" runat="server">
         <div class="jumbotron">
              <h1 class="display-4">XYZ Apartment Complex</h1>
              <p class="lead">This is a simple application, where tenants can register their vehicles and management can track vehicles park at the apartment complex.</p>
              <hr class="my-4"/>
             <div>
                 <p>Don't have an account?</p>
                 <asp:Button class="btn btn-primary btn-lg" runat="server" Text="Create an account" ID="Register" OnClick="OnClick_Register"/>
             </div>
        </div>
       
        <div class="error">
            <asp:label runat="server" Id="Error"></asp:label>
        </div>
        <div class="display">
                 <div>
                     <p>Please enter the following information in order to register a vehicle.</p>
                      <asp:Label ID="ApartmentNumLbl" runat="server" Text="Apartment Number:"></asp:Label>
                      <asp:TextBox CssClass="form-control" ID="ApartmentNum" runat="server"></asp:TextBox>

                     <asp:Label ID="EmailLbl" runat="server" Text="Email Address:"></asp:Label>
                      <asp:TextBox CssClass="form-control" ID="EmailAddress" runat="server"></asp:TextBox>
                     <br />
                     <asp:Button class="btn btn-primary btn-lg" runat="server" ID ="Submit" Text="Submit" OnClick="OnClick_Submit" CausesValidation="false" />

                 </div>
                 <div style="margin-left:30%;">
                     <p>Search a vehicle by registration number.</p>
                      <asp:Label ID="VregistrationNum" runat="server" Text="Vehicle's Registration number:"></asp:Label>
                      <asp:TextBox CssClass="form-control" ID="RegistrationNum" runat="server"></asp:TextBox>
                     <br />
                     <asp:Button class="btn btn-primary btn-lg" runat="server" ID="Search" Text="Search a vehical" OnClick="OnClick_Search"/>

                 </div>
             </div>
    </form>
</body>
</html>

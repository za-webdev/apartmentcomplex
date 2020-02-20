<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterOwner.aspx.cs" Inherits="ApartmentComplex.Index.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Owner</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="css\customStyle.css"/>

</head>
<body>
    <div class="success">
        <asp:Label runat="server" ID="successMsg"></asp:Label>
    </div>
    <form id="form1" runat="server">

        <div class="wrapperDiv">
             
            <h1>Personal Info</h1>
            <div runat="server" id="RegisterOwnerDiv">
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
                <br />
                <asp:Button class="btn btn-primary btn-md" runat="server" Text="Register" ID="RegisterOwner" OnClick="OnClick_RegisterOwner"/>
                <asp:Button class="btn btn-danger btn-md" runat="server" Text="Cancel" ID="Cancel" OnClick="OnClick_Cancel"/>

            </div>
        </div>
        
    </form>
</body>
</html>

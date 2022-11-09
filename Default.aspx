<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test_Application._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <h2>
        Registration Form in asp.net using stored procedures.....!
    </h2>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="mobile"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Label ID="lblerror" runat="server" ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>



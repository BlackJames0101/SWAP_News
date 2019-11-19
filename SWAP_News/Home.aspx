<%@ Page Title="資管系系學會管理系統" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <style type="text/css">

        .Homephoto {
            position:absolute ; 
            top:120px; left:15px;
            width: 900px;
            height: 400px;
        }

        .行事曆 {
            position:absolute ;
            top:120px; left:1000px;
            width: 500px;
            height: 400px;
        }

        .公告 {
            position:absolute ; 
            top:600px; left:15px;
            width: 900px;
            height: 100px;

        }
        .系學會粉專按鈕{
            position:absolute ; 
            top:600px; 
            left:1400px;
            width: 90px;
            height: 90px;
        }

        .國防大學粉專按鈕{
            position:absolute ; 
            top:600px; 
            left:1200px;
            width: 90px;
            height: 90px;
        }

        .崇廉山莊按鈕{
            position:absolute ; 
            top:600px; 
            left:1000px;
            width: 90px;
            height: 90px;
        }


    </style>


    <table class="nav-justified" style="height: 680px">
    <tr>
        <td style="height: 50px"></td>
    </tr>
    <tr>
        <td>
            <table class="Background" style="margin-top: 14px;">

                <tr>                   
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/HomePhoto.png" CssClass="Homephoto" />
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/系學會粉專按鈕.png" CssClass="系學會粉專按鈕" PostBackUrl="https://www.facebook.com/" /> 
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/國防大學粉專按鈕.png" CssClass="國防大學粉專按鈕" PostBackUrl="https://www.facebook.com/" />
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/崇廉山莊按鈕.png" CssClass="崇廉山莊按鈕" PostBackUrl="https://www.facebook.com/" />
                </tr>
                <tr>
                    <td style="background-color:wheat" class="公告"> <br />公告<br /></td>
                </tr>

                <tr>
                    <td rowspan="2" style="background-color: #ffd800" class="行事曆" >行事曆</td>
                </tr>

            </table>
        </td>
    </tr>
</table>

</asp:Content>



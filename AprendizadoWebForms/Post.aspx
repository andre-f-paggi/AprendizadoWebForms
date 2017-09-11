<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="AprendizadoWebForms.Post" MasterPageFile="~/Site.Master" %>


<asp:content id="BodyContent" contentplaceholderid="MainContent" runat="server">

<% 
    if (Request.RequestType == "POST")
    {
%>
<div class="jumbotron">
  <h1>Your name is ...</h1>
  <p class="<%= pPrintItRed ? "text-danger" : "" %>"><%= pPersonName %></p>
</div>
<%
   }
%>
    <form id="postForm" action="Post.aspx" method="post">
        <div class="form-group">
            <label class="control-label" for="PersonName">Name</label>
            <input type="text" class="form-control" id="PersonName" placeholder="Your Name" runat="server">
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" id="PrintItRed" name="PrintItRed" runat="server">
                <%--<asp:CheckBox ID="PrintItRed" runat="server" />--%>
                Print it <span class="text-danger">Red</span>?
            </label>
        </div>
        <button type="submit" class="btn btn-primary">Send</button>
    </form>
</asp:content>

﻿<%@ Page Title="Topics" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Topics.aspx.cs" Inherits="SummitCommunity.Topics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
      <h1><%: Title %> <small>in <strong>
          <asp:Label ID="LabelCategory" runat="server"></asp:Label></strong></small></h1>
    </div>

    <div class="row">
        <div class="col-md-8">
            <asp:TextBox ID="TextBoxSearch" runat="server" class="form-control col-md-8" placeholder="Search" Style="width:800px"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Button ID="ButtonSearch" runat="server" class="btn btn-default" Text="Search" />
        </div>
        
    </div>
    <br />
    <div class="row">
        <asp:GridView ID="GridViewTopics" runat="server" class="table table-hover"
            SelectMethod="GridViewTopics_GetData"
            ItemType="SummitCommunity.Data.Models.Question"
            AllowPaging="True"
            AllowSorting="True"
            DataKeyNames="Id"
            AutoGenerateEditButton="false" 
            AutoGenerateColumns="false"
            GridLines="None"
            Font-Size="X-Large" PageSize="2">
            <Columns>               
                <asp:BoundField DataField="Vote" HeaderText="Vote" SortExpression="Vote"/>
                <asp:HyperlinkField 
                    HeaderText="Title" 
                    DataTextField="Title"
                    DataNavigateUrlFields="Id" 
                    DataNavigateUrlFormatString="~/ViewQuestion?id={0}" />
                <asp:BoundField DataField="User.FirstName" HeaderText="User" />
                <asp:BoundField DataField="CreatedOn" HeaderText="Created on" SortExpression="CreatedOn" DataFormatString="{0:d}" />
            </Columns> 
            <PagerSettings Mode="NextPreviousFirstLast"/>              
        </asp:GridView>
    </div>

    <div class="row">
        Can`t find what you are looking for? Open a new topic:              
        <asp:Button ID="ButtonNewTopic" runat="server" class="btn btn-default" Text="New Topic" />
        

        
    </div>

</asp:Content>

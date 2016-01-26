﻿<%@ Page Title="Summit Community" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SummitCommunity._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1><%: Title %></h1>
        <p class="lead">Long text description here.Long text description here.Long text description here.</p>
    </div>

    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    <div class="text-center">
        <asp:ListView runat="server" ID="ListViewPopularQuestions"
            ItemType="SummitCommunity.Data.Models.Question"
            SelectMethod="ListViewPopularQuestions_GetData"
            GroupItemCount="2">
            <LayoutTemplate>
                <h2>Most popular questions</h2>
                <asp:PlaceHolder runat="server" ID="groupPlaceHolder"></asp:PlaceHolder>
            </LayoutTemplate>
            <GroupSeparatorTemplate>
                <hr />
            </GroupSeparatorTemplate>
            <GroupTemplate>
                <div class="row">
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                </div>
            </GroupTemplate>
            <ItemTemplate>
                <itemtemplate>
                    <div class="col-md-6">
                        <h3><asp:hyperlink navigateurl='<%# "~/ViewQuestion?id=" + Item.Id %>' runat="server" Text="<%#: Item.Title %>" /> <small><%#: Item.Category.Name %></small></h3>
                        <p>
                            <%# Item.Content  %>
                        </p>
                        <p>Vote: <%#: Item.Vote %></p>
                        <div>
                            <i>by <%#: Item.User.FirstName + " " + Item.User.LastName %></i>
                            <i>created on: <%# Item.CreatedOn %></i>
                        </div>
                    </div>
                </itemtemplate>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

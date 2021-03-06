﻿<%@ Page 
    ValidateRequest="false"
    Language="C#" 
    MasterPageFile="~/MasterPage.master" 
    AutoEventWireup="true" 
    CodeFile="Default.aspx.cs" 
    Inherits="_Default" 
    Title="Stacked - Q&amp;A Done Right!" %>

<%@ Register 
    src="UserControls/ItemGrid.ascx" 
    tagname="ItemGrid" 
    tagprefix="uc1" %>

<asp:Content 
    ID="cnt" 
    ContentPlaceHolderID="body" 
    Runat="Server">

    <ra:TabControl 
        runat="server" 
        ID="tab" 
        OnActiveTabViewChanged="tabContent_ActiveTabViewChanged"
        CssClass="tab">

        <ra:TabView 
            Caption="Recently answered" 
            runat="server" 
            ID="tabLateAct" 
            CssClass="content">

            <uc1:ItemGrid 
                ID="gridLateAct" 
                runat="server" />

        </ra:TabView>

        <ra:TabView 
            Caption="Recently asked" 
            runat="server" 
            ID="tabNew" 
            CssClass="content">

            <uc1:ItemGrid 
                ID="gridNew" 
                runat="server" />

        </ra:TabView>

        <ra:TabView 
            Caption="Most answers" 
            runat="server" 
            ID="tabMost" 
            CssClass="content">
            
            <uc1:ItemGrid 
                ID="gridMost" 
                runat="server" />

        </ra:TabView>

        <ra:TabView 
            Caption="Unanswered" 
            runat="server" 
            ID="tabUn" 
            CssClass="content">

            <uc1:ItemGrid 
                ID="gridUn" 
                runat="server" />

        </ra:TabView>

    </ra:TabControl>
    <asp:Label 
        runat="server" 
        ID="lblCount" 
        CssClass="lblCountUsers"
        Text="Number of users in Stacked: " />

</asp:Content>


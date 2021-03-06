﻿<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <dx:ASPxCardView ID="ASPxCardView1" runat="server" DataSourceID="AccessDataSource1" KeyFieldName="CustomerID" AutoGenerateColumns="False" OnCustomButtonCallback="ASPxCardView1_CustomButtonCallback">
        <SettingsBehavior AllowFocusedCard="true" />
        <Columns>
            <dx:CardViewTextColumn FieldName="CompanyName" VisibleIndex="1">
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn FieldName="ContactName" VisibleIndex="2">
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn FieldName="City" VisibleIndex="5">
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn FieldName="Region" VisibleIndex="6">
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn FieldName="Country" VisibleIndex="8">
            </dx:CardViewTextColumn>
        </Columns>
        <CardLayoutProperties>
            <Items>
                <dx:CardViewCommandLayoutItem HorizontalAlign="Right">
                </dx:CardViewCommandLayoutItem>
                <dx:CardViewColumnLayoutItem ColumnName="Company Name">
                </dx:CardViewColumnLayoutItem>
                <dx:CardViewColumnLayoutItem ColumnName="Contact Name">
                </dx:CardViewColumnLayoutItem>
                <dx:CardViewColumnLayoutItem ColumnName="City">
                </dx:CardViewColumnLayoutItem>
                <dx:CardViewColumnLayoutItem ColumnName="Region">
                </dx:CardViewColumnLayoutItem>
                <dx:CardViewColumnLayoutItem ColumnName="Country">
                </dx:CardViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem HorizontalAlign="Right">
                </dx:EditModeCommandLayoutItem>
            </Items>
        </CardLayoutProperties>
        </dx:ASPxCardView>  
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Customers]" />  
    </div>
    </form>
</body>
</html>
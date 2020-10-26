<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FeedBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls" TagPrefix="xmod" %>
<xmod:masterview runat="server">
<xmod:Feed runat="server" ContentType="text/csv" FileName="Piases.csv">

<ListDataSource CommandText="SELECT pais_id,pais_nombre,habitantes FROM XMP_Paises" />

<HeaderTemplate>pais_id,pais_nombre,habitantes
</HeaderTemplate>

<ItemTemplate><%#Eval("Values")("pais_id")%>,<%#Eval("Values")("pais_nombre")%>,<%#Eval("Values")("habitantes")%>
</ItemTemplate>

<FooterTemplate></FooterTemplate>

</xmod:Feed>
</xmod:masterview>
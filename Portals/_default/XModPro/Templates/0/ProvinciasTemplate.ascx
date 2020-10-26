<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.TemplateBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls" TagPrefix="xmod" %>
<xmod:masterview runat="server">
<xmod:Template runat="server" UsePaging="True" Ajax="False" AddRoles="" EditRoles="" DeleteRoles="" DetailRoles="">
  <ListDataSource CommandText="SELECT [id_provincia], [nombre_provincia], [cantidad_habitantes] FROM XMP_Provincias"/>
  <DetailDataSource CommandText="SELECT [nombre_provincia], [cantidad_habitantes] FROM XMP_Provincias WHERE [id_provincia] = @id_provincia">
    <Parameter Name="id_provincia" />
  </DetailDataSource>
  <DeleteCommand CommandText="DELETE FROM XMP_Provincias WHERE [id_provincia] = @id_provincia">
    <Parameter Name="id_provincia" />
  </DeleteCommand>
  <HeaderTemplate>
    <div style="width:400px;overflow:hidden;">
  </HeaderTemplate>
  <ItemTemplate>
      <div style="width:133px;float:left;margin:0px;">
        <span><%#Eval("Values")("id_provincia")%></span><br />
        <span><%#Eval("Values")("nombre_provincia")%></span><br />
        <span><%#Eval("Values")("cantidad_habitantes")%></span><br />
        <div>
            <xmod:EditLink runat="server" Text="Edit">
              <Parameter Name="id_provincia" Value='<%#Eval("Values")("id_provincia")%>' />
            </xmod:EditLink>
            <xmod:DeleteLink runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');">
              <Parameter Name="id_provincia" Value='<%#Eval("Values")("id_provincia")%>' />
            </xmod:DeleteLink>
            <xmod:DetailLink runat="server" Text="Details">
              <Parameter Name="id_provincia" Value='<%#Eval("Values")("id_provincia")%>' />
            </xmod:DetailLink>
        </div>
      </div>
  </ItemTemplate>
  <FooterTemplate>
    </div>
  </FooterTemplate>

  <DetailTemplate>

    <strong>nombre_provincia</strong> <%#Eval("Values")("nombre_provincia")%><br />
    <strong>cantidad_habitantes</strong> <%#Eval("Values")("cantidad_habitantes")%><br />
    <xmod:ReturnLink runat="server" CssClass="dnnSecondaryAction" Text="&lt;&lt; Return" />

  </DetailTemplate>
</xmod:Template>
<div>
  <xmod:AddLink runat="server" Text="New" />
  </div>
</xmod:masterview>
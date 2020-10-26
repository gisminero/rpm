<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.TemplateBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls" TagPrefix="xmod" %>
<xmod:masterview runat="server">
<xmod:Template runat="server" UsePaging="True" Ajax="False" AddRoles="" EditRoles="" DeleteRoles="" DetailRoles="">
  <ListDataSource CommandText="SELECT [pais_id], [pais_nombre] FROM XMP_Paises"/>
  <DetailDataSource CommandText="SELECT [pais_id], [pais_nombre], [habitantes] FROM XMP_Paises WHERE [pais_id] = @pais_id">
    <Parameter Name="pais_id" />
  </DetailDataSource>
  <DeleteCommand CommandText="DELETE FROM XMP_Paises WHERE [pais_id] = @pais_id">
    <Parameter Name="pais_id" />
  </DeleteCommand>
  <HeaderTemplate>
    
      <table>
        <thead>
          <tr>
            <th>pais_id</th>
            <th>pais_nombre</th>
            <th>&nbsp;</th>
          </tr>
        </thead>
        <tbody>
    </HeaderTemplate>
    <ItemTemplate>
          <tr>
            <td><%#Eval("Values")("pais_id")%></td>
            <td><%#Eval("Values")("pais_nombre")%></td>
            <td>
              <xmod:EditLink runat="server" Text="Editar este pais" imageurl="~/images/table.customTable.png" tooltip="Editar el pais seleccionado">
                <Parameter Name="pais_id" Value='<%#Eval("Values")("pais_id")%>' />
              </xmod:EditLink>
              <xmod:DeleteLink runat="server" Text="Borrar este pais" OnClientClick="return confirm('Are you sure you want to delete this?');">
                <Parameter Name="pais_id" Value='<%#Eval("Values")("pais_id")%>' />
              </xmod:DeleteLink>
              <xmod:DetailLink runat="server" Text="Ver más datos">
                <Parameter Name="pais_id" Value='<%#Eval("Values")("pais_id")%>' />
              </xmod:DetailLink>
            </td>
          </tr>
    </ItemTemplate>
    <FooterTemplate>
        </tbody>
      </table>
    </FooterTemplate>
    

  <DetailTemplate>

    <strong>pais_id</strong> <%#Eval("Values")("pais_id")%><br />
    <strong>pais_nombre</strong> <%#Eval("Values")("pais_nombre")%><br />
    <strong>habitantes</strong> <%#Eval("Values")("habitantes")%><br />
    <xmod:ReturnLink runat="server" CssClass="dnnSecondaryAction" Text="&lt;&lt; Return" />

  </DetailTemplate>
</xmod:Template>
<div>
  <xmod:AddLink runat="server" Text="New" />
  </div></xmod:masterview>
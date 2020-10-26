<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.TemplateBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls" TagPrefix="xmod" %>
<xmod:masterview runat="server">
<xmod:Template runat="server" UsePaging="True" Ajax="False" AddRoles="" EditRoles="" DeleteRoles="" DetailRoles="">
  <ListDataSource CommandText="SELECT [id_productor], [id_provincia], [localidad], [caracter] FROM XMP_Productor"/>
  <DetailDataSource CommandText="SELECT [id_productor], [id_provincia], [localidad], [caracter] FROM XMP_Productor WHERE [id_productor] = @id_productor">
    <Parameter Name="id_productor" />
  </DetailDataSource>
  <DeleteCommand CommandText="DELETE FROM XMP_Productor WHERE [id_productor] = @id_productor">
    <Parameter Name="id_productor" />
  </DeleteCommand>
  <HeaderTemplate>
    <table>
      <thead>
        <tr>
          <th>id_productor</th>
          <th>id_provincia</th>
          <th>localidad</th>
          <th>caracter</th>
          <th>&nbsp;</th>
        </tr>
      </thead>
      <tbody>
  </HeaderTemplate>
  <ItemTemplate>
        <tr>
          <td><%#Eval("Values")("id_productor")%></td>
          <td><%#Eval("Values")("id_provincia")%></td>
          <td><%#Eval("Values")("localidad")%></td>
          <td><%#Eval("Values")("caracter")%></td>
          <td>
            <xmod:EditLink runat="server" Text="Edit">
              <Parameter Name="id_productor" Value='<%#Eval("Values")("id_productor")%>' />
            </xmod:EditLink>
            <xmod:DeleteLink runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');">
              <Parameter Name="id_productor" Value='<%#Eval("Values")("id_productor")%>' />
            </xmod:DeleteLink>
            <xmod:DetailLink runat="server" Text="Details">
              <Parameter Name="id_productor" Value='<%#Eval("Values")("id_productor")%>' />
            </xmod:DetailLink>
          </td>
        </tr>
  </ItemTemplate>
  <FooterTemplate>
      </tbody>
    </table>
  </FooterTemplate>

  <DetailTemplate>

    <strong>id_productor</strong> <%#Eval("Values")("id_productor")%><br />
    <strong>id_provincia</strong> <%#Eval("Values")("id_provincia")%><br />
    <strong>localidad</strong> <%#Eval("Values")("localidad")%><br />
    <strong>caracter</strong> <%#Eval("Values")("caracter")%><br />
    <xmod:ReturnLink runat="server" CssClass="dnnSecondaryAction" Text="&lt;&lt; Return" />

  </DetailTemplate>
</xmod:Template>
<div>
  <xmod:AddLink runat="server" Text="New" />
  </div>
</xmod:masterview>
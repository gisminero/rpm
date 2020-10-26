<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.TemplateBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls" TagPrefix="xmod" %>
<xmod:masterview runat="server">
<xmod:jQueryReady runat="server">
$(document).ready(function(){
 $("#msg").html("<h2>jQuery Hello World</h2>");
});
 
$(document).ready(function() {
      $("#newdiv").click(function() {
        alert("Hello world!");
      });
});
  

</xmod:jQueryReady>
<xmod:Template runat="server" UsePaging="True" Ajax="True" AddRoles="" EditRoles="" DeleteRoles="" DetailRoles="">
  <ListDataSource CommandText="SELECT [pais_id], [pais_nombre] FROM XMP_Paises"/>
  <DetailDataSource CommandText="SELECT [pais_id], [pais_nombre], [habitantes] FROM XMP_Paises WHERE [pais_id] = @pais_id">
    <Parameter Name="pais_id" />
  </DetailDataSource>
  <DeleteCommand CommandText="DELETE FROM XMP_Paises WHERE [pais_id] = @pais_id">
    <Parameter Name="pais_id" />
  </DeleteCommand>
  <HeaderTemplate>
    <table class="table table-bordered table-striped">
      <thead style="background-color: #05F8D8">
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
              <xmod:EditImage runat="server" Text="Editar estddddde pais" ImageUrl="~/images/eip_edit.png" tooltip="Editar el pais seleccionado">
                <Parameter Name="pais_id" Value='<%#Eval("Values")("pais_id")%>' />
              </xmod:EditImage>
              
              <xmod:DeleteImage runat="server" Text="Borrar este pais" ImageUrl="~/images/delete.gif"  tooltip="Eliminar este pais" OnClientClick="return confirm('Are you sure you want to delete this?');">
                <Parameter Name="pais_id" Value='<%#Eval("Values")("pais_id")%>' />
              </xmod:DeleteImage>
              <xmod:DetailImage runat="server" Text="Ver más datos" ImageUrl="~/images/view.gif" tooltip="Ver mas datos">
                <Parameter Name="pais_id" Value='<%#Eval("Values")("pais_id")%>' />
              </xmod:DetailImage>
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
  <!--<xmod:AddLink runat="server" Text="Agregar Pais" />-->
  <xmod:AddImage runat="server" ImageUrl="~/images/add.gif" ImageAlign="Left" AlternateText="Agregar Pais" />
  <a href="http://localhost/dnn/DesktopModules/XModPro/Feed.aspx?xfd=FeedsPais&pid=0" target="_blank"> <img src="http://localhost/dnn/images/epi_save.gif" /></a>

  </div>
<div id="msg">
</div>
<div id="newdiv">
Click on this to see a dialogue box.
</div></xmod:masterview>
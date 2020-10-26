<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Theme_none_Provicias">
    <link rel="stylesheet" type="text/css" href="/DNN/DesktopModules/XModPro/styles/none" />
  </ScriptBlock>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_Provicias">
    <style type="text/css">
      .xmp-Provicias { padding: 10px 5px 5px 5px; }
      .xmp-Provicias .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-Provicias label.xmp-form-label, .xmp-Provicias span.xmp-form-label{ display:block; float:left; width: 120px;text-align: left; margin-right: 5px; }
      .xmp-Provicias .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SubmitCommand CommandText="INSERT INTO [XMP_Provincias] ([nombre_provincia], [cantidad_habitantes], [id_pais]) VALUES(@nombre_provincia, @cantidad_habitantes, @id_pais) " /><ControlDataSource Id="id_pais_en_provincias" CommandText="SELECT [pais_id], [pais_nombre] FROM [XMP_Paises] ORDER BY [pais_id] ASC"></ControlDataSource><div class="xmp-form xmp-Provicias">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="nombre_provincia">Nombre Provincia</Label><TextBox Id="nombre_provincia" Width="200" MaxLength="50" DataField="nombre_provincia" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="cantidad_habitantes">Cantidad Habitantes</Label><TextBox Id="cantidad_habitantes" Nullable="True" DataField="cantidad_habitantes" DataType="int32"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="id_pais">Pais</Label><DropDownList Id="id_pais" DataField="id_pais" DataSourceId="id_pais_en_provincias" DataTextField="pais_nombre" DataValueField="pais_id" DataType="int32"></DropDownList></div><ValidationSummary CssClass="xmp-validation" Id="vsXMP_Provincias"></ValidationSummary><div class="xmp-form-row"><Label class="xmp-form-label">&nbsp;</Label><AddButton Text="Add"></AddButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div></xmod:AddForm></AddItemTemplate><EditItemTemplate><xmod:EditForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Theme_none_Provicias">
    <link rel="stylesheet" type="text/css" href="/DNN/DesktopModules/XModPro/styles/none" />
  </ScriptBlock>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_Provicias">
    <style type="text/css">
      .xmp-Provicias { padding: 10px 5px 5px 5px; }
      .xmp-Provicias .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-Provicias label.xmp-form-label, .xmp-Provicias span.xmp-form-label{ display:block; float:left; width: 120px;text-align: left; margin-right: 5px; }
      .xmp-Provicias .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SelectCommand CommandText="SELECT [nombre_provincia], [cantidad_habitantes], [id_pais], [id_provincia] FROM XMP_Provincias WHERE [id_provincia]=@id_provincia" />  <SubmitCommand CommandText="UPDATE [XMP_Provincias] SET [nombre_provincia]=@nombre_provincia, [cantidad_habitantes]=@cantidad_habitantes, [id_pais]=@id_pais WHERE [id_provincia]=@id_provincia" /><ControlDataSource Id="id_pais_en_provincias" CommandText="SELECT [pais_id], [pais_nombre] FROM [XMP_Paises] ORDER BY [pais_id] ASC"></ControlDataSource><div class="xmp-form xmp-Provicias">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="nombre_provincia">Nombre Provincia</Label><TextBox Id="nombre_provincia" Width="200" MaxLength="50" DataField="nombre_provincia" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="cantidad_habitantes">Cantidad Habitantes</Label><TextBox Id="cantidad_habitantes" Nullable="True" DataField="cantidad_habitantes" DataType="int32"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="id_pais">Pais</Label><DropDownList Id="id_pais" DataField="id_pais" DataSourceId="id_pais_en_provincias" DataTextField="pais_nombre" DataValueField="pais_id" DataType="int32"></DropDownList></div><ValidationSummary CssClass="xmp-validation" Id="vsXMP_Provincias"></ValidationSummary><div class="xmp-form-row"><Label class="xmp-form-label">&nbsp;</Label><UpdateButton Text="Update"></UpdateButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div><TextBox Visible="False" Id="id_provincia" DataField="id_provincia"></TextBox></xmod:EditForm></EditItemTemplate></xmod:FormView>

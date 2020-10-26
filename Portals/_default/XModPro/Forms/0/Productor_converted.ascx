<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Theme_ui-blitzer/jquery-ui-1.7.2.custom.css_Productor">
    <link rel="stylesheet" type="text/css" href="/DNN/DesktopModules/XModPro/styles/ui-blitzer/jquery-ui-1.7.2.custom.css" />
  </ScriptBlock>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_Productor">
    <style type="text/css">
      .xmp-Productor { padding: 10px 5px 5px 5px; }
      .xmp-Productor .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-Productor label.xmp-form-label, .xmp-Productor span.xmp-form-label{ display:block; float:left; width: 120px;text-align: left; margin-right: 5px; }
      .xmp-Productor .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SubmitCommand CommandText="INSERT INTO [XMP_Productor] ([localidad], [caracter], [id_provincia]) VALUES(@localidad, @caracter, @id_provincia) " /><ControlDataSource Id="id_provincia_tabla" CommandText="SELECT [id_provincia], [nombre_provincia] FROM [XMP_Provincias] ORDER BY [id_provincia] ASC"></ControlDataSource><ControlDataSource Id="id_pais" CommandText="SELECT [pais_id], [pais_nombre] FROM [XMP_Paises] ORDER BY [pais_id] ASC"></ControlDataSource><div class="ui-widget ui-widget-content xmp-form xmp-Productor">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="localidad">Localidad</Label><TextBox Id="localidad" Width="200" MaxLength="50" DataField="localidad" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="caracter">Caracter</Label><TextBox Id="caracter" Width="200" MaxLength="50" DataField="caracter" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="id_provincia">ProvinciA</Label><DropDownList Id="id_provincia" DataField="id_provincia" DataSourceId="id_provincia_tabla" DataTextField="nombre_provincia" DataValueField="id_provincia" DataType="int32"></DropDownList></div><ValidationSummary CssClass="xmp-validation ui-state-error" Id="vsXMP_Productor"></ValidationSummary><div class="xmp-form-row"><Label class="xmp-form-label">&nbsp;</Label><AddButton Text="Agregar"></AddButton><CancelButton Text="Cancelar" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div></xmod:AddForm></AddItemTemplate><EditItemTemplate><xmod:EditForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Theme_ui-blitzer/jquery-ui-1.7.2.custom.css_Productor">
    <link rel="stylesheet" type="text/css" href="/DNN/DesktopModules/XModPro/styles/ui-blitzer/jquery-ui-1.7.2.custom.css" />
  </ScriptBlock>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_Productor">
    <style type="text/css">
      .xmp-Productor { padding: 10px 5px 5px 5px; }
      .xmp-Productor .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-Productor label.xmp-form-label, .xmp-Productor span.xmp-form-label{ display:block; float:left; width: 120px;text-align: left; margin-right: 5px; }
      .xmp-Productor .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SelectCommand CommandText="SELECT [localidad], [caracter], [id_provincia], [id_productor] FROM XMP_Productor WHERE [id_productor]=@id_productor" />  <SubmitCommand CommandText="UPDATE [XMP_Productor] SET [localidad]=@localidad, [caracter]=@caracter, [id_provincia]=@id_provincia WHERE [id_productor]=@id_productor" /><ControlDataSource Id="id_provincia_tabla" CommandText="SELECT [id_provincia], [nombre_provincia] FROM [XMP_Provincias] ORDER BY [id_provincia] ASC"></ControlDataSource><ControlDataSource Id="id_pais" CommandText="SELECT [pais_id], [pais_nombre] FROM [XMP_Paises] ORDER BY [pais_id] ASC"></ControlDataSource><div class="ui-widget ui-widget-content xmp-form xmp-Productor">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="localidad">Localidad</Label><TextBox Id="localidad" Width="200" MaxLength="50" DataField="localidad" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="caracter">Caracter</Label><TextBox Id="caracter" Width="200" MaxLength="50" DataField="caracter" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="id_provincia">ProvinciA</Label><DropDownList Id="id_provincia" DataField="id_provincia" DataSourceId="id_provincia_tabla" DataTextField="nombre_provincia" DataValueField="id_provincia" DataType="int32"></DropDownList></div><ValidationSummary CssClass="xmp-validation ui-state-error" Id="vsXMP_Productor"></ValidationSummary><div class="xmp-form-row"><Label class="xmp-form-label">&nbsp;</Label><UpdateButton Text="Actualizar"></UpdateButton><CancelButton Text="Cancelar" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div><TextBox Visible="False" Id="id_productor" DataField="id_productor"></TextBox></xmod:EditForm></EditItemTemplate></xmod:FormView>

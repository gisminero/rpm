<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Theme_ui-lightness/ui-lightness.css_PaisForm">
    <link rel="stylesheet" type="text/css" href="/DNN/DesktopModules/XModPro/styles/ui-lightness/ui-lightness.css" />
  </ScriptBlock>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_PaisForm">
    <style type="text/css">
      .xmp-PaisForm { padding: 10px 5px 5px 5px; }
      .xmp-PaisForm .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-PaisForm label.xmp-form-label, .xmp-PaisForm span.xmp-form-label{ display:block; float:left; width: 75px;text-align: left; margin-right: 5px; }
      .xmp-PaisForm .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SubmitCommand CommandText="INSERT INTO [XMP_Paises] ([pais_nombre], [habitantes]) VALUES(@pais_nombre, @habitantes) " /><div class="ui-widget ui-widget-content xmp-form xmp-PaisForm">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="pais_nombre">Pais Nombre</Label><TextBox Id="pais_nombre" Width="200" MaxLength="50" DataField="pais_nombre" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="habitantes">Habitantes</Label><TextBox Id="habitantes" Nullable="True" DataField="habitantes" DataType="int32"></TextBox></div>
    <div class="xmp-form-row"><Label class="xmp-form-label">&nbsp;</Label><AddButton Text="Add"></AddButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div></xmod:AddForm></AddItemTemplate><EditItemTemplate><xmod:EditForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Theme_ui-lightness/ui-lightness.css_PaisForm">
    <link rel="stylesheet" type="text/css" href="/DNN/DesktopModules/XModPro/styles/ui-lightness/ui-lightness.css" />
  </ScriptBlock>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_PaisForm">
    <style type="text/css">
      .xmp-PaisForm { padding: 10px 5px 5px 5px; }
      .xmp-PaisForm .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-PaisForm label.xmp-form-label, .xmp-PaisForm span.xmp-form-label{ display:block; float:left; width: 75px;text-align: left; margin-right: 5px; }
      .xmp-PaisForm .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SelectCommand CommandText="SELECT [pais_nombre], [habitantes], [pais_id] FROM XMP_Paises WHERE [pais_id]=@pais_id" />  <SubmitCommand CommandText="UPDATE [XMP_Paises] SET [pais_nombre]=@pais_nombre, [habitantes]=@habitantes WHERE [pais_id]=@pais_id" /><div class="ui-widget ui-widget-content xmp-form xmp-PaisForm">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="pais_nombre">Pais Nombre</Label><TextBox Id="pais_nombre" Width="200" MaxLength="50" DataField="pais_nombre" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="habitantes">Habitantes</Label><TextBox Id="habitantes" Nullable="True" DataField="habitantes" DataType="int32"></TextBox></div>
    <div class="xmp-form-row"><Label class="xmp-form-label">&nbsp;</Label><UpdateButton Text="Update"></UpdateButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div><TextBox Visible="False" Id="pais_id" DataField="pais_id"></TextBox></xmod:EditForm></EditItemTemplate></xmod:FormView>

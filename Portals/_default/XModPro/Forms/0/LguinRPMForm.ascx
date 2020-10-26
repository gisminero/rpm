<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server">

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_LguinRPMForm">
    <style type="text/css">
      .xmp-LguinRPMForm { padding: 10px 5px 5px 5px; }
      .xmp-LguinRPMForm .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-LguinRPMForm label.xmp-form-label{ display:block; text-align: left; }
      .xmp-LguinRPMForm .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SubmitCommand CommandText="INSERT INTO [Users] ([Username], [Email]) VALUES(@Username, @Email) " /><div class="xmp-form xmp-LguinRPMForm">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="Username">Username</Label><TextBox Id="Username" Width="250" MaxLength="100" DataField="Username" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="Email">Email</Label><TextBox Id="Email" Width="250" MaxLength="100" DataField="Email" DataType="string"></TextBox></div><ValidationSummary CssClass="NormalRed xmp-validation" Id="vsUsers"></ValidationSummary><div class="xmp-form-row"><Label class="xmp-form-label NormalBold">&nbsp;</Label><AddButton Text="Ingresar"></AddButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="false"></CancelButton></div>
  </div></xmod:AddForm></AddItemTemplate><EditItemTemplate><xmod:EditForm runat="server">

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_LguinRPMForm">
    <style type="text/css">
      .xmp-LguinRPMForm { padding: 10px 5px 5px 5px; }
      .xmp-LguinRPMForm .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-LguinRPMForm label.xmp-form-label{ display:block; text-align: left; }
      .xmp-LguinRPMForm .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SelectCommand CommandText="SELECT [Username], [Email], [UserID] FROM Users WHERE [UserID]=@UserID" />  <SubmitCommand CommandText="UPDATE [Users] SET [Username]=@Username, [Email]=@Email WHERE [UserID]=@UserID" /><div class="xmp-form xmp-LguinRPMForm">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="Username">Username</Label><TextBox Id="Username" Width="250" MaxLength="100" DataField="Username" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="Email">Email</Label><TextBox Id="Email" Width="250" MaxLength="100" DataField="Email" DataType="string"></TextBox></div><ValidationSummary CssClass="NormalRed xmp-validation" Id="vsUsers"></ValidationSummary><div class="xmp-form-row"><Label class="xmp-form-label NormalBold">&nbsp;</Label><UpdateButton Text="Borrar"></UpdateButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="false"></CancelButton></div>
  </div><TextBox Visible="False" Id="UserID" DataField="UserID"></TextBox></xmod:EditForm></EditItemTemplate></xmod:FormView>

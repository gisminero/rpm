<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<%@ Register tagprefix="rmg" namespace="reflect.xile" assembly="reflect.xile" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_RMG_UploadDemo">
    <style type="text/css">
      .RMG_UploadDemo { padding: 10px 5px 5px 5px; }
      .RMG_UploadDemo .xmp-form-row { clear:left; margin-bottom: 15px;}
      .RMG_UploadDemo .xmp-form-row label { display: block; font-size: 16px; margin-bottom: 5px;}
      .RMG_UploadDemo .xmp-form-row input[type="text"] {
      	padding: 9px;
        margin-bottom: 20px;
        background: #f3f3f3;
        border: 1px solid #bfbfbf;
        -webkit-border-radius: 0px;
        border-radius: 0px;
        -webkit-box-shadow: 0px 1px 0px 0px rgba(255, 255, 255, 0.8), inset 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
        box-shadow: 0px 1px 0px 0px rgba(255, 255, 255, 0.8), inset 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
        color: #666;
        font-size: 13px;
        width: 300px;
        border-radius: 4px;
      }
      .RMG_UploadDemo .xmp-button { margin-right: 5px; }
      .rmg-singleupload {}
      .rmg-singleupload .fileupload-buttons { border: 0px;}
      .rmg-singleupload .rmg-filetable { border-top: 0px; }
    </style>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
  </ScriptBlock>
  <SubmitCommand CommandText="INSERT INTO [XMP.ZPrueba] ([path], [cuit]) VALUES(@PrimaryImage, @Name) " />
  <div class="RMG_UploadDemo">
    <div class="instructions">
      <h1>
        Cargar IIA
      </h1>
      <p>
        Este paso es necesario que usted sube una imagen con la primer pagina de la IIA. Este paso sirve para validar sus datos como productor.<br/>
        Luego esta imagen será validada por personal del ministerio de mineria para corroborar su identidad
      </p>
    </div>
    <div class="xmp-form-row">
      <Label For="Name">Ingrese su CUIT para el CUIL: <%#Join("{0}", UserData("USERNAME"))%>:</Label>
      <TextBox Id="Name" Nullable="False" MaxLength="50" DataField="Name" DataType="string" value='<%#Join("{0}", UserData("USERNAME"))%>'></TextBox>
      <Validate Type="required" Target="Name" Text="Required" Message="Required" />
    </div>
    <div class="xmp-form-row">
      <Label For="PrimaryImage">Agregue la imagen de la primer hoja de su IIA</Label>
      <rmg:Xile runat="server" 
        Id="PrimaryImage" 
        Nullable="False" 
        DataField="PrimaryImage" 
        Dropzone="True"
        AcceptFileTypes="jpg,jpeg,png"
        MaxNumberOfFiles="1"
        MaxFileSize="2097152"
        AutoUpload="True"
        AutoCreateFolder="True"
        FileUploadPath='<%#Join("~/Portals/{0}/PapelesPresentados/{1}", PortalData("ID"), UserData("USERNAME"))%>'
        ResizeVersions="width=800;height=600;mode=max, sm_:width=400;height=400;mode=max, thm_:width=80;height=80;mode=max"
        UniqueFileName="True"
        UploadMode="Single"
        AddFilesButtonText="Add Image"
        WrapperClass="rmg-singleupload"
        ShowTopCancelButton="False"
        ShowTopCheckBox="False"
        ShowTopProgressBar="False"
        ShowTopDeleteButton="False"
        UploadButtonText="Subime esta">
      </rmg:Xile>
    </div>
    <div class="xmp-form-row">
      <AddLink Class="dnnPrimaryAction btnPrimary primaryButton" Text="Subir IIA"></AddLink>
    </div>
  </div>
  
  </xmod:AddForm></AddItemTemplate><EditItemTemplate><xmod:EditForm runat="server">

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
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="Email">Email</Label>
    <TextBox Id="Email" Width="250" MaxLength="100" DataField="Email" DataType="string"></TextBox></div>
    <ValidationSummary CssClass="NormalRed xmp-validation" Id="vsUsers"></ValidationSummary>
    <div class="xmp-form-row"><Label class="xmp-form-label NormalBold">&nbsp;</Label>
    <UpdateButton Text="Borrar"></UpdateButton>
    <CancelButton Text="Cancel" style="margin-left: 12px;" Visible="false"></CancelButton>
    </div>
  </div><TextBox Visible="False" Id="UserID" DataField="UserID"></TextBox>
  </xmod:EditForm></EditItemTemplate></xmod:FormView>

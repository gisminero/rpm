<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<%@ Register tagprefix="rmg" namespace="reflect.xile" assembly="reflect.xile" %>
<xmod:FormView runat="server">
<AddItemTemplate>
<xmod:AddForm runat="server">
  
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_Article">
    <style type="text/css">
      .xmp-Article {
        padding: 10px 5px 5px 5px;
      }
      .xmp-Article .xmp-form-row {
        margin: 3px;
        padding: 3px;
        clear:left;
      }
      .xmp-Article label.xmp-form-label, .xmp-Article span.xmp-form-label{
        display:block;
        float:left;
        width: 120px;
        text-align: left;
        margin-right: 5px;
      }
      .xmp-Article .xmp-button {
        margin-right: 5px;
      }
      .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 16px 82px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 50px;
        transition-duration: 0.4s;
        cursor: pointer;
      }
      .buttonverde {
        background-color: white; 
        color: black; 
        border: 2px solid #4CAF50;
      }

      .buttonverde:hover {
        background-color: #4CAF50;
        color: white;
      }
      .buttonrojo {
        background-color: white; 
        color: black; 
        border: 2px solid #f44336;
      }

      .buttonrojo:hover {
        background-color: #f44336;
        color: white;
      }
      .buttonblue {
        background-color: white; 
        color: black; 
        border: 2px solid #008CBA;
      }

      .buttonblue:hover {
        background-color: #008CBA;
        color: white;
      }

    </style>
  </ScriptBlock>
    

  <div class="xmp-form xmp-Article">
    <div id="wizard-step-1" class="wizard-step">
      <h2>Informacion del Productor</h2>
      <hr>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="cuit">
          CUIT
        </Label>
        <TextBox Id="cuit" Width="250" MaxLength="80" DataField="cuit" DataType="string" value="20258522587">
        </TextBox>
        <Validate Target="cuit" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El CUIT es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="razonsocial">
          Razon Social
        </Label>
        <TextBox Id="razonsocial" Width="250" MaxLength="80" DataField="razonsocial" DataType="string" value="Barrick Gold">
        </TextBox>
        <Validate Target="razonsocial" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La Razon Social es requerida para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="numeroproductor">
          Numero de Productor
        </Label>
        <TextBox Id="numeroproductor" Width="250" MaxLength="80" DataField="numeroproductor" DataType="string" value="25149">
        </TextBox>
        <Validate Target="numeroproductor" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El Numero de productor es necesario es requerida para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="tipodesociedad">
          Tipo de Sociedad
        </Label>
        <TextBox Id="tipodesociedad" Width="250" MaxLength="80" DataField="tipodesociedad" DataType="string" value="Sociedad Anonima">
        </TextBox>
        <Validate Target="tipodesociedad" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El Tipo de Sociedad es necesario es requerida para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label For="inscripciondgr">Inscripcion de DGR</Label>
        <rmg:Xile runat="server" 
          Id="inscripciondgr" 
          Nullable="False" 
          DataField="inscripciondgr" 
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
      <br>
      <br>
      <div class="xmp-form-row">
        <Label For="constanciadesociedad">Constancia de Sociedad</Label>
        <rmg:Xile runat="server" 
          Id="constanciadesociedad" 
          Nullable="False" 
          DataField="constanciadesociedad" 
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
      <hr>
      <div class="xmp-form-row" align="center">
        <button class="button buttonrojo">Cancelar</button>
        <button class="button buttonverde">Guardar</button>
        <a href="#" data-step="2"><button class="button buttonblue">Siguiente &gt;&gt;</button></a>
      </div>
    </div>
    <div id="wizard-step-2" class="wizard-step">
      <h2>Step Two</h2>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="AuthorId">
          Author
        </Label>
        <DropDownList Id="AuthorId" DataField="AuthorId" AppendDataBoundItems="true" DataType="int32">
          <ListItem Value="">
            (Select One)
          </ListItem>
        </DropDownList>
        <Validate Target="AuthorId" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="An author is required">
        </Validate>
        <div>
          <a href="#" data-step="1" class="wizard-nav dnnSecondaryAction">&lt;&lt; Back</a>
          <a href="#" data-step="3" class="wizard-nav dnnSecondaryAction">Next &gt;&gt;</a>
        </div>
      </div>
    </div>
    <div id="wizard-step-3" class="wizard-step">
      <h2>Step Three</h2>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="Synopsis">
          Synopsis
        </Label>
        <TextArea Id="Synopsis" Height="80" Width="400" Nullable="true" DataField="Synopsis" DataType="string">
        </TextArea>
      </div>
      <ValidationSummary CssClass="NormalRed xmp-validation" Id="vsXMP_Articles">
      </ValidationSummary>
      <div>
        <a href="#" data-step="2" class="wizard-nav dnnSecondaryAction">&lt;&lt; Back</a>        
      </div>

      <div class="xmp-form-row">
        <Label class="xmp-form-label NormalBold">
          &nbsp;
        </Label>
        <UpdateButton Text="Update">
        </UpdateButton>
        <CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true">
        </CancelButton>
      </div>
    </div>
  </div>


<jQueryReady>
    $('.wizard-step').hide();
    $('#wizard-step-1').show();
    $('.wizard-nav').on('click', function(e) {
        e.preventDefault();
      var stepNum = parseInt($(this).data('step'));
      $('.wizard-step').hide();
      switch (stepNum) {
        case 1: 
          $('#wizard-step-1').fadeIn();
          break;
        case 2:
          $('#wizard-step-2').fadeIn();
          break;
        case 3:
          $('#wizard-step-3').fadeIn();
          break;
      }
    });
  </jQueryReady>

</xmod:AddForm>
</AddItemTemplate>
</xmod:FormView>

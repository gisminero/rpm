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
          Nullable="True" 
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
        <a href="#" data-step="2"  class="dnnSecondaryAction"><button class="button buttonblue">Siguiente &gt;&gt;</button></a>
        <a href="#" data-step="2" class="wizard-nav dnnSecondaryAction">Next &gt;&gt;</a>
      </div>
    </div>
    <div id="wizard-step-2" class="wizard-step">
      <h2>Domicilio Legal</h2>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="calle">
          Calle
        </Label>
        <TextBox Id="calle" Width="250" MaxLength="80" DataField="calle" DataType="string" value="Calle Corrientes">
        </TextBox>
        <Validate Target="calle" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La calle es necesaria para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="numerocalle">
          Numero
        </Label>
        <TextBox Id="numerocalle" Width="250" MaxLength="80" DataField="numerocalle" DataType="string" value="1458 este">
        </TextBox>
        <Validate Target="numerocalle" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El numero de  calle es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="telefono">
          Telefono
        </Label>
        <TextBox Id="telefono" Width="250" MaxLength="80" DataField="telefono" DataType="string" value="264-6859696">
        </TextBox>
        <Validate Target="telefono" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El numero de telefono es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="pais">
          Pais
        </Label>
        <TextBox Id="pais" Width="250" MaxLength="80" DataField="telefono" DataType="string" value="Argentina">
        </TextBox>
        <Validate Target="pais" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El pais es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="provincia">
          Provincia
        </Label>
        <TextBox Id="provincia" Width="250" MaxLength="80" DataField="provincia" DataType="string" value="San Juan">
        </TextBox>
        <Validate Target="provincia" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La provincia es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="departamento">
          Departamento
        </Label>
        <TextBox Id="departamento" Width="250" MaxLength="80" DataField="departamento" DataType="string" value="Capital">
        </TextBox>
        <Validate Target="departamento" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El departamento es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="localidad">
          Localidad
        </Label>
        <TextBox Id="localidad" Width="250" MaxLength="80" DataField="localidad" DataType="string" value="Trinidad">
        </TextBox>
        <Validate Target="localidad" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La localidad es necesaria para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="cp">
          CP
        </Label>
        <TextBox Id="cp" Width="250" MaxLength="80" DataField="cp" DataType="string" value="5400">
        </TextBox>
        <Validate Target="cp" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El numero de cp es necesario para continuar">
        </Validate>
      </div>
      <hr>
      <div class="xmp-form-row">
        <button class="button buttonrojo">Cancelar</button>
        <button class="button buttonverde">Guardar</button>
        <a href="#" data-step="1" class="wizard-nav dnnSecondaryAction">&lt;&lt; Back</a>
        <a href="#" data-step="3" class="wizard-nav dnnSecondaryAction">Next &gt;&gt;</a>
      </div>
    </div>
    <div id="wizard-step-3" class="wizard-step">
      <h2>Domicilio de la Administracion</h2>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="calleadministacion">
          Calle
        </Label>
        <TextBox Id="calleadministacion" Width="250" MaxLength="80" DataField="calleadministacion" DataType="string" value="Calle Libertador">
        </TextBox>
        <Validate Target="calleadministacion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La calle de Administracion es necesaria para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="numerocalleadministracion">
          Numero
        </Label>
        <TextBox Id="numerocalleadministracion" Width="250" MaxLength="80" DataField="numerocalleadministracion" DataType="string" value="2545 este">
        </TextBox>
        <Validate Target="numerocalleadministracion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El numero de  calle es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="telefonoadministracion">
          Telefono
        </Label>
        <TextBox Id="telefonoadministracion" Width="250" MaxLength="80" DataField="telefonoadministracion" DataType="string" value="264-778899">
        </TextBox>
        <Validate Target="telefonoadministracion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El numero de telefono de la administracion es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="paisadministracion">
          Pais
        </Label>
        <TextBox Id="paisadministracion" Width="250" MaxLength="80" DataField="telefono" DataType="string" value="Argentina">
        </TextBox>
        <Validate Target="paisadministracion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El pais de la administracion es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="provinciaadministracion">
          Provincia
        </Label>
        <TextBox Id="provinciaadministracion" Width="250" MaxLength="80" DataField="provinciaadministracion" DataType="string" value="San Juan">
        </TextBox>
        <Validate Target="provinciaadministracion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La provincia de administracion es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="departamentoadministracion">
          Departamento
        </Label>
        <TextBox Id="departamentoadministracion" Width="250" MaxLength="80" DataField="departamentoadministracion" DataType="string" value="9 de Julio">
        </TextBox>
        <Validate Target="departamentoadministracion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El departamento de la administracion es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="localidadadministracion">
          Localidad
        </Label>
        <TextBox Id="localidadadministracion" Width="250" MaxLength="80" DataField="localidadadministracion" DataType="string" value="Las Cañitas">
        </TextBox>
        <Validate Target="localidadadministracion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La localidad de la administracion es necesaria para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="cpadministracion">
          CP
        </Label>
        <TextBox Id="cpadministracion" Width="250" MaxLength="80" DataField="cpadministracion" DataType="string" value="5400">
        </TextBox>
        <Validate Target="cpadministracion" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El numero de cp de la administracion es necesario para continuar">
        </Validate>
      </div>
      <hr>
      <div class="xmp-form-row">
        <button class="button buttonrojo">Cancelar</button>
        <button class="button buttonverde">Guardar</button>
        <a href="#" data-step="2" class="wizard-nav dnnSecondaryAction">&lt;&lt; Back</a>
        <a href="#" data-step="4" class="wizard-nav dnnSecondaryAction">Next &gt;&gt;</a>
      </div>
    </div>
    <div id="wizard-step-4" class="wizard-step">
      <h2>Datos de la Mina o Cantera (1° Parte)</h2>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="categoriamina">
          Categoria de Mina
        </Label>
        <TextBox Id="categoriamina" Width="250" MaxLength="80" DataField="categoriamina" DataType="string" value="Mina 1° Categoria">
        </TextBox>
        <Validate Target="categoriamina" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La categoria de la mina debe ser seleccionada para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="mineralexplotado">
          Mineral Explotado
        </Label>
        <TextBox Id="mineralexplotado" Width="250" MaxLength="80" DataField="mineralexplotado" DataType="string" value="Oro en polvo">
        </TextBox>
        <Validate Target="mineralexplotado" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El mineral explotado es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="variedadmineral">
          Variedad
        </Label>
        <TextBox Id="variedadmineral" Width="250" MaxLength="80" DataField="variedadmineral" DataType="string" value="264-778899">
        </TextBox>
        <Validate Target="variedadmineral" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La variedad del mineral es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="nombremina">
          Nombre (para categoría 1° y 2°)
        </Label>
        <TextBox Id="nombremina" Width="250" MaxLength="80" DataField="telefono" DataType="string" value="Veladero">
        </TextBox>
        <Validate Target="nombremina" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El nombre de la mina es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="descripcionmina">
          Descripcion (para 3° categoría)
        </Label>
        <TextBox Id="descripcionmina" Width="250" MaxLength="80" DataField="descripcionmina" DataType="string" value="Mina al aire libre">
        </TextBox>
        <Validate Target="descripcionmina" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="La descripcion de la mina es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="distritominero">
          Distrito Minero
        </Label>
        <TextBox Id="distritominero" Width="250" MaxLength="80" DataField="distritominero" DataType="string" value="Jachal Minero">
        </TextBox>
        <Validate Target="distritominero" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El distrito minero es necesario para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="minaocantera">
          Mina o Canteroa
        </Label>
        <TextBox Id="minaocantera" Width="250" MaxLength="80" DataField="minaocantera" DataType="string" value="Mina">
        </TextBox>
        <Validate Target="minaocantera" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="Debe selecionar entre mina o cantera para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label For="planoinmueble">Plano Inmueble (para 3° categría)</Label>
        <rmg:Xile runat="server" 
          Id="planoinmueble" 
          Nullable="False" 
          DataField="planoinmueble" 
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
      <div class="xmp-form-row">
        <button class="button buttonrojo">Cancelar</button>
        <button class="button buttonverde">Guardar</button>
        <a href="#" data-step="3" class="wizard-nav dnnSecondaryAction">&lt;&lt; Back</a>
        <a href="#" data-step="5" class="wizard-nav dnnSecondaryAction">Next &gt;&gt;</a>
      </div>
    </div>
    <div id="wizard-step-5" class="wizard-step">
      <h2>Datos de la Mina o Cantera (2° Parte)</h2>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="caracter">
          Caracter que invoca (para 3° Categoría)
        </Label>
        <TextBox Id="caracter" Width="250" MaxLength="80" DataField="caracter" DataType="string" value="Caracter">
        </TextBox>
        <Validate Target="caracter" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="El caracter de la mina debe ser seleccionada para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label For="contrato">Titulo - Contrato - Poseción Veinteañal (todo en un solo archivo para 3° categoría)</Label>
        <rmg:Xile runat="server" 
          Id="contrato" 
          Nullable="False" 
          DataField="contrato" 
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
      <div class="xmp-form-row">
        <Label For="resolucion">Resolución Consesión Minera (para 1° y 2° Categoría)</Label>
        <rmg:Xile runat="server" 
          Id="resolucion" 
          Nullable="False" 
          DataField="resolucion" 
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
      <div class="xmp-form-row">
        <Label For="constanciacanon">Constancia de Pago de Canon</Label>
        <rmg:Xile runat="server" 
          Id="constanciacanon" 
          Nullable="False" 
          DataField="constanciacanon" 
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
      <div class="xmp-form-row">
        <Label For="iia">IIA</Label>
        <rmg:Xile runat="server" 
          Id="iia" 
          Nullable="False" 
          DataField="iia" 
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
      <div class="xmp-form-row">
        <Label For="dia">DIA</Label>
        <rmg:Xile runat="server" 
          Id="dia" 
          Nullable="False" 
          DataField="dia" 
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
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="acciones">
          Acciones a Desarrollar
        </Label>
        <TextBox Id="acciones" Width="250" MaxLength="80" DataField="acciones" DataType="string" value="Explotacion de piedras">
        </TextBox>
        <Validate Target="acciones" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="Se reuiqere que escriba su acciones a desarrollar para continuar">
        </Validate>
      </div>
      <br>
      <div class="xmp-form-row">
        <Label CssClass="xmp-form-label NormalBold" For="actividad">
          Actividad
        </Label>
        <TextBox Id="actividad" Width="250" MaxLength="80" DataField="actividad" DataType="string" value="venta de oro y plata">
        </TextBox>
        <Validate Target="actividad" CssClass="NormalRed xmp-validation" Type="required" Text="**" Message="Se reuiqere que escriba su actividad a desarrollar para continuar">
        </Validate>
      </div>
      <hr>
      <div class="xmp-form-row">
        <button class="button buttonrojo">Cancelar</button>
        <button class="button buttonverde">Guardar</button>
        <a href="#" data-step="4" class="wizard-nav dnnSecondaryAction">&lt;&lt; Back</a>
        <a href="#" data-step="6" class="wizard-nav dnnSecondaryAction">Next &gt;&gt;</a>
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
        case 4:
          $('#wizard-step-4').fadeIn();
          break;
        case 5:
          $('#wizard-step-5').fadeIn();
          break;
      }
    });
  </jQueryReady>

</xmod:AddForm>
</AddItemTemplate>
</xmod:FormView>

<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<%@ Register tagprefix="rmg" namespace="reflect.xile" assembly="reflect.xile" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server">

  <ScriptBlock ScriptId="CustomCSS" BlockType="HeadScript" RegisterOnce="true">
    <style type="text/css">
      .validate-error {
        position: absolute;
        top: 0;
        left: 0;
        color: red;
      }
      .required-field {
      	border-left: 1px solid red; 
      }
      
      .seller-form {
        max-width: 800px;
  			margin: 40px auto;
      }
      
      .seller-form label small {
        font-weight: normal;
        border-left: 1px solid;
        padding-left: 5px;
      }
      
      .seller-form .checkbox {
        padding-left: 25px;
      }
      
      
      .seller-form .fileupload-buttons {
        border-bottom: 0px;
      }
    </style>  
  </ScriptBlock> 
  
  <SelectCommand CommandText="SELECT @UserID AS UserID">
  	<Parameter Name="UserID" Value='<%#UserData("ID")%>' DataType="Int32" />
  </SelectCommand>

  <SubmitCommand CommandText="INSERT INTO [XMP_Classified_Seller] 
                              (
                              	 [UserID]
                              	,[Seller_Name]
                              	,[Seller_Address]
                              	,[Seller_Location]
                              	,[Seller_Phone]
                              	,[Seller_Email]
                              	,[Show_Address_By_Default]
                              	,[Show_Phone_By_Default]
                              	,[Seller_Image]
                              	,[Seller_Level]
                              	,[Agree]                              	
                              ) 
                              	VALUES
                              (
                              	 @UserID
                              	,@Seller_Name
                              	,@Seller_Address
                              	,123
                              	,@Seller_Phone
                              	,@Seller_Email
                              	,@Show_Address_By_Default
                              	,@Show_Phone_By_Default
                              	,@Seller_Image
                              	,1
                              	,@Agree
                              )" />
  
  <ControlDataSource Id="cds_Locations" CommandText="SELECT [LocationID], [City] + ', ' + [State] AS CityState FROM [XMP_Classified_Location] ORDER BY [City] ASC" />
  
  <div class="seller-form">
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Informacion Personal</h3>
      </div>
      <div class="panel-body">    
        <div class="form-group">
          <Label For="Seller_Name">Razon Social del Productor <small>Este puede ser su nombre o el nombre con el que esta inscripto ante la afip</small></Label>
          <TextBox Id="Seller_Name" CssClass="form-control required-field" MaxLength="150" DataField="Seller_Name" DataType="string" />
          <Validate Target="Seller_Name" CssClass="validate-error" Type="required" Text="*" Message="Name is required." />      
        </div>

        <div class="form-group">
          <Label For="Seller_Address">Direccion del Producto <small>Donde se encuentra ubicado el productor.</small></Label>
          <TextBox Id="Seller_Address" CssClass="form-control required-field" MaxLength="150" DataField="Seller_Address" DataType="string" />
          <Validate Target="Seller_Address" CssClass="validate-error" Type="required" Text="*" Message="Address is required." />
        </div>

        
        <div class="form-group">
          <Label For="Seller_Image">Primer Hoja De IIA <small>Si bien el IIA tiene varias hojas se solicita que por favor cargue la primera de la misma para comprobar datos.</small></Label>
          <rmg:Xile runat="server" 
            Id="Seller_Image" 
            Nullable="True" 
            DataField="Seller_Image" 
            Dropzone="True"
            AcceptFileTypes="jpg,jpeg,png"
            MaxNumberOfFiles="1"
            MaxFileSize="2097152"
            AutoUpload="True"
            AutoCreateFolder="True"
            FileUploadPath='<%#Join("~/Portals/{0}/Classifieds/SellerImages/", PortalData("ID"))%>'
            ResizeVersions="width=800;height=600;mode=max, sm_:width=400;height=400;mode=max, thm_:width=80;height=80;mode=max"
            UniqueFileName="True"
            UploadMode="Single"
            AddFilesButtonText="Add Image"
            WrapperClass="rmg-singleupload"
            ShowTopCancelButton="False"
            ShowTopCheckBox="False"
            ShowTopProgressBar="False"
            ShowTopDeleteButton="False">
          </rmg:Xile>        
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Informacion para Contacto</h3>
      </div>
      <div class="panel-body">
        <div class="form-group">
          <Label For="Seller_Phone">Telefono del Producto <small>Este número no será publicado en ningun lugar. Es para que nosotros nos comuniquemos .</small></Label>
          <TextBox Id="Seller_Phone" CssClass="form-control required-field" MaxLength="50" DataField="Seller_Phone" DataType="string" />
          <Validate Target="Seller_Phone" CssClass="validate-error" Type="required" Text="*" Message="Phone is required." />
        </div>

        <div class="form-group">
          <Label For="Seller_Email">Seller Email <small>Inquires will be sent to this email address.</small></Label>
          <TextBox Id="Seller_Email" Value='<%#UserData("Email")%>' CssClass="form-control required-field" MaxLength="100" DataField="Seller_Email" DataType="string" />
          <Validate Target="Seller_Email" CssClass="validate-error" Type="required" Text="*" Message="Email is required." />
          <Validate Target="Seller_Email" CssClass="validate-error" Type="email" Text="*" Message="Email is invalid." />
        </div>
    	</div>
    </div>
    
    <!-- <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Default Options</h3>
      </div>
      <div class="panel-body">

        <div class="alert alert-info">
          <p>
            Items that you check below will be visible on your seller profile, but only to authenticated users on the site who have created a user account. 
            You can always change your default options later if desired, as well as override these options on a per/ad basis.
          </p>
        </div>
        <div class="checkbox">
          <CheckBox Id="Show_Address_By_Default" DataField="Show_Address_By_Default" DataType="boolean" /> <strong>Show Address by Default</strong>
        </div>
        <div class="checkbox">
          <CheckBox Id="Show_Phone_By_Default" DataField="Show_Phone_By_Default" DataType="boolean" /> <strong>Show Phone by Default</strong>
        </div>              
      </div>
    </div> -->
    
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Terms and Conditions</h3>
      </div>
      <div class="panel-body">
        <ul>
          <li>
            <strong>Contact Information:</strong> I understand that including my contact information by utilizing the defaults or inserting them per/ad is my sole responsibility. I am also aware that this contact information will only be seen by registered members on this website unless I include my contact information in the description of my ad, in which case will be visible to unauthenticated visitors to the website. 
          </li>
          <li>
            <strong>Adult Content:</strong> I agree to not post any ad that is adult-related in content, such as anything that would offend or be inappropriate for children under the age of 18.
          </li>
          <li>
            <strong>Animals and Pets:</strong>I also understand that no animals are permitted, such as trade, free, adoption or otherwise. 
          </li>
          <li>
            <strong>Your Responsibility:</strong> I also understand that utilizing the classifieds on this website is my full responsibility in every way, whether posting, viewing, inquiring, etc. I agree that aza-z.com will not be liable in any way for any Ad or communication of any part in relation to an Ad, including, but not limited to, for any errors or omissions in my ad(s) or other ads, or for any loss or damage of any kind incurred as a result of the use of this website.
          </li>
          <li>
            <strong>The Hammer:</strong> I also understand that if I violate any of these guidelines my account may be terminated, IP address may be blocked, or ad may be removed if deemed inappropriate. 
          </li>
        </ul>
        <p>
          By checking the box below, I fully understand and agree to the above noted terms and conditions and I promise to behave myself!
        </p>
        <div class="checkbox">
					<CheckBox Id="Agree" DataField="Agree" DataType="boolean" /> <strong>I Agree to the above Terms and Conditions</strong>
        	<Validate Type="checkbox" CssClass="validate-error" Target="Agree" Text="*" Message="You must agree to the terms and conditions." />
        </div>        
    	</div>
    </div>
        
    <ValidationSummary CssClass="alert alert-danger" Id="vsXMP_Classified_Seller" />
    
    <AddButton CssClass="btn btn-primary" Text="Crear Cuenta de Productor" Redirect="/DashboardProductor?f=1" RedirectMethod="Get" />  
    <CancelButton CssClass="btn btn-default" Text="Cancel" Visible="true" Redirect="/DashboardProductor" RedirectMethod="Get" />
    
  </div>
  
  <Email To='[[Seller_Email]]' From="dnnregister@aqasoft.com.ar" ReplyTo="dnnregister@aqasoft.com.ar" BCC="dnnregister@aqasoft.com.ar" Format="text" Subject="Your seller account has been created.">
    Congratulations [[Seller_Name]]!
    
    You've successfully created a seller account. 
    
    You can post ads or make changes to your seller profile from your dashboard:
    
    http://aza-z.com/Dashboard
    
    If you have any questions, feel free to reply to this email.

    ~ aza-z.com 
  </Email>
  
  <AddToRoles RoleNames="Sellers" UserId='[[UserID]]'></AddToRoles>

  
  <TextBox ID="UserID" DataField="UserID" DataType="Int32" ReadOnly="True" Visible="False" />
</xmod:AddForm></AddItemTemplate><EditItemTemplate><xmod:EditForm runat="server">
  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Theme_none_Admin_Classified_Seller">
    <link rel="stylesheet" type="text/css" href="/DNN/DesktopModules/XModPro/styles/none" />
  </ScriptBlock>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_Admin_Classified_Seller">
    <style type="text/css">
      .xmp-Admin_Classified_Seller { padding: 10px 5px 5px 5px; }
      .xmp-Admin_Classified_Seller .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-Admin_Classified_Seller label.xmp-form-label, .xmp-Admin_Classified_Seller span.xmp-form-label{ display:block; float:left; width: 120px;text-align: left; margin-right: 5px; }
      .xmp-Admin_Classified_Seller .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


  <SelectCommand CommandText="SELECT [UserID], [UpdatedBy], [Seller_Name], [Seller_Address], [Seller_Location], [Seller_Phone], [Seller_Email], [Show_Address_By_Default], [Show_Phone_By_Default], [Seller_Image], [Seller_Level], [Agree], [Banned], [SellerID] FROM XMP_Classified_Seller WHERE [SellerID]=@SellerID" />  <SubmitCommand CommandText="UPDATE [XMP_Classified_Seller] SET [UserID]=@UserID, [UpdatedBy]=@UpdatedBy, [Seller_Name]=@Seller_Name, [Seller_Address]=@Seller_Address, [Seller_Location]=@Seller_Location, [Seller_Phone]=@Seller_Phone, [Seller_Email]=@Seller_Email, [Show_Address_By_Default]=@Show_Address_By_Default, [Show_Phone_By_Default]=@Show_Phone_By_Default, [Seller_Image]=@Seller_Image, [Seller_Level]=@Seller_Level, [Agree]=@Agree, [Banned]=@Banned WHERE [SellerID]=@SellerID" /><ControlDataSource Id="cds_Users" CommandText="SELECT [UserID], [Username] FROM [Users] ORDER BY [Username] ASC"></ControlDataSource><ControlDataSource Id="cds_Locations" CommandText="SELECT [LocationID], [City], [State] FROM [XMP_Classified_Location] ORDER BY [City] ASC"></ControlDataSource><ControlDataSource Id="cds_Levels" CommandText="SELECT [LevelID], [Level_Name] FROM [XMP_Classified_Level] ORDER BY [LevelID] ASC"></ControlDataSource><div class="xmp-form xmp-Admin_Classified_Seller">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="UserID">Select User</Label><DropDownList Id="UserID" DataField="UserID" DataSourceId="cds_Users" DataTextField="Username" DataValueField="UserID" AppendDataBoundItems="true" DataType="int32"><ListItem Value="">- Please select -</ListItem></DropDownList><Validate Target="UserID" CssClass="xmp-validation" Type="required" Text="*" Message="User is required."></Validate></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="UpdatedBy">Updated By</Label><TextBox Id="UpdatedBy" Nullable="True" DataField="UpdatedBy" DataType="int32"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Seller_Name">Seller Name</Label><TextBox Id="Seller_Name" MaxLength="150" DataField="Seller_Name" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Seller_Address">Seller Address</Label><TextBox Id="Seller_Address" MaxLength="150" DataField="Seller_Address" DataType="string"></TextBox><Validate Target="Seller_Address" CssClass="xmp-validation" Type="required" Text="*" Message="Address is required."></Validate></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Seller_Location">Location</Label><DropDownList Id="Seller_Location" Nullable="true" DataField="Seller_Location" DataSourceId="cds_Locations" DataTextField="City" DataValueField="LocationID" AppendDataBoundItems="true" DataType="int32"><ListItem Value="">- Please select -</ListItem></DropDownList></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Seller_Phone">Seller Phone</Label><TextBox Id="Seller_Phone" MaxLength="50" DataField="Seller_Phone" DataType="string"></TextBox><Validate Target="Seller_Phone" CssClass="xmp-validation" Type="required" Text="*" Message="Phone is required."></Validate></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Seller_Email">Seller Email</Label><TextBox Id="Seller_Email" MaxLength="100" DataField="Seller_Email" DataType="string"></TextBox><Validate Target="Seller_Email" CssClass="xmp-validation" Type="required" Text="*" Message="Email is required."></Validate><Validate Target="Seller_Email" CssClass="xmp-validation" Type="email" Text="*" Message="Please enter a valid email."></Validate></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Show_Address_By_Default">Show Address By Default</Label><CheckBox Id="Show_Address_By_Default" DataField="Show_Address_By_Default" DataType="boolean"></CheckBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Show_Phone_By_Default">Show Phone By Default</Label><CheckBox Id="Show_Phone_By_Default" DataField="Show_Phone_By_Default" DataType="boolean"></CheckBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Seller_Image">Seller Image</Label><TextBox Id="Seller_Image" Width="250" Nullable="True" MaxLength="150" DataField="Seller_Image" DataType="string"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Seller_Level">Level</Label><DropDownList Id="Seller_Level" DataField="Seller_Level" DataSourceId="cds_Levels" DataTextField="Level_Name" DataValueField="LevelID" AppendDataBoundItems="true" DataType="int32"><ListItem Value="">- Please select -</ListItem></DropDownList><Validate Target="Seller_Level" CssClass="xmp-validation" Type="required" Text="*" Message="Level is required."></Validate></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Agree">Agree</Label><CheckBox Id="Agree" DataField="Agree" DataType="boolean"></CheckBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label" For="Banned">Banned</Label><CheckBox Id="Banned" DataField="Banned" DataType="boolean"></CheckBox></div><ValidationSummary CssClass="xmp-validation" Id="vsXMP_Classified_Seller"></ValidationSummary><div class="xmp-form-row"><Label class="xmp-form-label">&nbsp;</Label><UpdateButton Text="Update"></UpdateButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div><TextBox Visible="False" Id="SellerID" DataField="SellerID"></TextBox></xmod:EditForm></EditItemTemplate></xmod:FormView>

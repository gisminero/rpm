<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server" Clientname="Join">
  
  <ScriptBlock ScriptId="CustomCSS" BlockType="HeadScript" RegisterOnce="true">
    <style type="text/css">
      .join-form {
        max-width: 800px;
        margin: auto;
      }
      
      .join-form label em {
        font-weight: normal;
        color: #555;
        font-size: 12px;
      }
      .join-form .progress {
        margin-top: 5px;
        margin-bottom: 0px;
      }
      
      .validate-error {
        color: red;
        display: block;
      }
      
      .required-field {
        border-left: 1px solid red; 
      }
      #username_exists, #displayname_exists, #email_exists { display: none; }
    </style> 
     <script type="text/javascript" src="http://localhost/dnn/DesktopModules/XModPro/plugins/passwordstrength/pwstrength-bootstrap.min.js"></script> 
  </ScriptBlock>
  
  <SubmitCommand />

  <div class="join-form">
    
    <div class="form-group">
      <label for="Username">Username <em>5-30 characters - no spaces or special characters</em></label> 
      <Textbox ID="Username" name="diegoinput" DataField="Username" CssClass="form-control required-field" DataType="String" autocomplete="off" />
      <Validate Type="required" CssClass="validate-error" Target="Username" Text="Required" Message="Username is required." />
      <Validate Type="regex" CssClass="validate-error" Target="Username" Text="5-30 characters - no spaces or special characters" Message="Username must be between 5-30 characters and cannot contain spaces or special characters." ValidationExpression="^[a-z0-9_-_@_-_A-Z]{5,30}$" />
      <div class="alert alert-danger" id="username_exists" style="margin-top: 10px; ">
        <p>This username is already taken. Did you forget your password?</p>
        <p><a class="btn btn-sm btn-default" href="?ctl=sendpassword">Reset Password</a></p>
      </div>      
    </div>
    
    <div class="form-group">
      <label for="Password">Password <em>7-20 characters - no spaces</em></label>
      <Password ID="Password" DataField="Password" CssClass="form-control required-field" DataType="String" autocomplete="off" />
      <Validate Type="required" CssClass="validate-error" Target="Password" Text="Required" Message="Password is required." />
      <Validate Type="regex" CssClass="validate-error" Target="Password" Text="7-20 characters - no spaces" Message="Your password must be between 7-20 characters and cannot contain spaces." ValidationExpression="^\S{7,20}$" />
    </div>
    
    <div class="form-group">
      <label for="ConfirmPassword">Confirm Password <em>Type your password again...</em></label>
      <Password ID="ConfirmPassword" DataField="ConfirmPassword" CssClass="form-control required-field" DataType="String" autocomplete="off" />
      <Validate Type="required" CssClass="validate-error" Target="ConfirmPassword" Text="Required" Message="Confirm Password is required." />
      <Validate Type="compare" CssClass="validate-error" Target="ConfirmPassword" Text="Must match" Message="Your confirmation password does not match." Operator="Equal" CompareTarget="Password" />
    </div>
    
    <div class="form-group">
      <label for="Displayname">Display Name <em>Others will see you by this alias...</em></label>
      <Textbox ID="Displayname" DataField="Displayname" CssClass="form-control required-field" DataType="String" autocomplete="off" />
      <Validate Type="required" CssClass="validate-error" Target="Displayname" Text="Required" Message="Display Name is required." />
      <div class="alert alert-danger" id="displayname_exists" style="margin-top: 10px; ">
        <p>This display name is already taken. Please try a new one.</p>          
      </div>
    </div>
    
    <div class="form-group">
      <label for="EmailAddress">Email Address <em>A confirmation link will be sent to this email...</em></label>
      <Textbox ID="EmailAddress" DataField="EmailAddress" CssClass="form-control required-field" DataType="String" autocomplete="off" />
      <Validate Type="required" CssClass="validate-error" Target="EmailAddress" Text="Required" Message="Email Address is required." />
      <Validate Type="email" CssClass="validate-error" Target="EmailAddress" Text="Invalid" Message="Your email address is invalid." />
      <div class="alert alert-danger" id="email_exists" style="margin-top: 10px; ">
        <p>This email is already registered. Did you forget your password?</p>
        <p>
          <a class="btn btn-sm btn-default" href="?ctl=sendpassword">Reset Password</a>
        </p>
      </div>
    </div>
    <div class="form-group">
      <label for="Firstname">Firstname - This is to stop false registrations - Do not fill in</label> 
      <Textbox ID="Firstname" DataField="Firstname" DataType="String" Nullable="True" autocomplete="off" />
      <Validate Type="regex" Target="Firstname" Text="Invalid" ValidationExpression="^\s*$" />      
    </div>
    <div class="form-group">
      <CheckBox Id="Agree" DataField="Agree" DataType="Boolean"></CheckBox> <span><strong>I agree to the <a href="/terms" target="_blank">Terms and Conditions</a></strong></span>
      <Validate Type="checkbox" CssClass="validate-error" Target="Agree" Text="Required" Message="You must agree to the terms and conditions." />
    </div>
    
    
    <ValidationSummary CssClass="alert alert-warning" Id="JoinValidate" DisplayMode="BulletList" HeaderText="Please correct the following errors:" />
    
    <AddButton CssClass="btn btn-primary btn-block" Text="Create My Account" Redirect="/loguin" RedirectMethod="Get"  />

     <Validate Type="Database" />


     <Validate Type="Action" />

           <a href="#" class="my-button" id="linkkks">Buiscar el username!</a> 
    <jQueryReady>
    $('#' + Join.Password).pwstrength({
      ui: { showVerdictsInsideProgressBar: true }
    });

    $('#' + Join.Firstname).closest('.form-group').hide();
    

    /*$('#'+ Join.Username).blur(function(){
    var $control = $(this);

    $.ajax({
      url: "http://localhost/dnn/DesktopModules/XModPro/Feed.aspx",
          type: "POST",
          dataType: "HTML",
          data: {
          "pid": 0 ,
          "xfd": "JoinUE",
          "x": $control.val()
          },
          success: function(data){
            if(parseInt(data) !== 0){
              console.log("The usernmae exists");
              $('#username_exists').fadeIn('fast');
            } else {
              console.log("el usuario esta bien");
              $('#username_exists').fadeOut('fast');

            }
          }
    });
  });*/

  $('#' + Join.Username).blur(function() {
    var $control = $(this);
    var $warning = $('#username_exists');
    CallFeed("JoinUE", $control, $warning);   
  });
    
  $('#' + Join.Displayname).blur(function() {
    var $control = $(this);
    var $warning = $('#displayname_exists');
    CallFeed("Join_Displayname_Exists", $control, $warning);   
  });
    
  $('#' + Join.EmailAddress).blur(function() {
    var $control = $(this);
    var $warning = $('#email_exists');
    CallFeed("Join_Email_Exists", $control, $warning);   
  });
    
  function CallFeed(feed, $control, $warning) {
    $.ajax({
      url: '/DesktopModules/XModPro/Feed.aspx',
      type: 'POST',
      dataType: 'HTML',
      data: {
        "pid": 0,
        "xfd": feed,
        "x": $control.val()
      },
   
      success: function(data) {
        if ( parseInt(data) !== 0 ) {
          $warning.fadeIn('fast');                            
        } else {
          $warning.fadeOut('fast');
        }
      }   
    });
  }

  $('form').submit(function() {
    // Creating my variables but not assigning yet...
    var usernameError, emailError, displaynameError;
    
    // Each variable below is either true or false based on the visibility of the selector...
    usernameError = $('#username_exists').is(':visible');
    emailError = $('#email_exists').is(':visible');
    displaynameError = $('#displayname_exists').is(':visible');
    
    // If one or more of the errors are visible, we return false... This means the form won't submit.
    // If all is good, allow the form to submit.
    if ( usernameError || emailError || displaynameError ) {
      return false;
    } else {
      return true;
    }    
  });

  </jQueryReady>

  <jQueryReady>
    
     $("#linkkks").click(function() {
        var $control = $(this);
        var username = $(".form-control").val();
        alert("voy a buscar: " + username);
        $.ajax({
          url: "http://localhost/dnn/DesktopModules/XModPro/Feed.aspx",
          type: "POST",
          dataType: "HTML",
          data: {
          "pid": 0 ,
          "xfd": "JoinUE",
          "x": username
          },
          success: function(data){
            console.log(data);
          }
        });
       });
      
    
    
    
 /*   
  $(document).ready(function(){
    $(document).on("click","#linkkks",function () {
        var variable = $("#Username").val();
        var nombre = "Juan";
        alert("Hola "+variable);
    });
});*/
  </jQueryReady>
  </div>
  
     <AddUser
      Approved="True|False"
      City="string"
      Country="string"
      DisplayName="string"
      Email="string"
      ErrMsgDuplicateEmail="string"
      ErrMsgDuplicateUser="string"
      ErrMsgDuplicateUsername="string"
      ErrMsgInvalidEmail="string"
      ErrMsgInvalidPassword="string"
      ErrMsgInvalidUsername="string"
      FirstName="string"
      LastName="string"
      Password="string"
      PostalCode="string"
      Region="string"
      RoleNames="comma-delimited list of DNN roles"
      Street="string"
      
      Telephone="string"
      Unit="string"
      UpdatePasswordOnNextLogin="True|False"
      Username="string"> 
        <!-- (NOTE: Property tags are optional)
				SendVerificationEmail="True|False"
       
        <Property Name="string" Value="string" />
        ...Additional Property Tags as needed... -->
    </AddUser>

     <AddUser Email='[[EmailAddress]]' Username='[[Username]]' Password='[[Password]]' DisplayName='[[Displayname]]'></AddUser>

     <Login Username='[[Username]]' Password='[[Password]]' RememberMe="True"></Login>
   <Redirect Method="Get" Target="/loguin" />

      <DateInput Id="Start" DataField="Start" DataType="datetime" Visible="False" Readonly="True" />

</xmod:AddForm></AddItemTemplate></xmod:FormView>

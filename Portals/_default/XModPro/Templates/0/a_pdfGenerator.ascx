<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.TemplateBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls" TagPrefix="xmod" %>
<xmod:masterview runat="server">

  <xmod:ScriptBlock runat="server" ScriptId="CustomCSS" BlockType="HeadScript" RegisterOnce="True" >
    <style type="text/css">
      .container {
          text-align: center;
      }
      .content {
          display: inline-block;
      }
      h2, h3 {
          color: navy;
      }
    </style>
  </xmod:ScriptBlock>
<xmod:Template runat="server"  Id="HTMLtoPDF" UsePaging="True" Ajax="False" AddRoles="" EditRoles="" DeleteRoles="" DetailRoles="">
  
    <ListDataSource CommandText="SELECT CONVERT(VARCHAR(10), getdate(), 101) As CurrentDate;"  />
    <DetailDataSource CommandText="SELECT 1"  />
    <HeaderTemplate>
        <div class="container">
            <div class="content">
                <h2 id="fullName"><%#UserData("FirstName")%> <%#UserData("LastName")%></h2>   
            </div>
            <br />
            <div class="content">
                <h3>Su comprobante de Registro de Productor Minero se encuentra listo</h3>
            </div>
            <br />
            <div class="content">
                <button id="gpdf">Ver el Registro de Inscripcion en PDF</button>
            </div>     
        </div>
    </HeaderTemplate>
    <ItemTemplate>
        <div id="currentDate" style="display: none;"><%#Eval("Values")("CurrentDate")%></div>    
    </ItemTemplate>
    <FooterTemplate> </FooterTemplate>
    <DetailTemplate></DetailTemplate>
    </xmod:Template>
    <!--     **********     jsPDF Script - Place Below Your Closing </xmod:Template> tag     **********     -->
<xmod:ScriptBlock runat="server" ScriptId="jsl" BlockType="HeadScript" RegisterOnce="true" Url="" >
      <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.2.0/jspdf.umd.min.js" integrity="sha512-YnVU8b8PyEw7oHtil6p9au8k/Co0chizlPltAwx25CMWX6syRiy24HduUeWi/WpBbJh4Y4562du0CHAlvnUeeQ==" crossorigin="anonymous"></script> -->
      <script type="text/javascript" src="http://localhost/dnn/DesktopModules/XModPro/plugins/pdf/jspdf.min.js"></script> 
  </xmod:ScriptBlock>
<Script type="text/javascript" >
    var doc = new jsPDF('p', 'mm', 'a4').setProperties({ title: 'Solicitud de Inscripcion Minera' });
    
    // Declaring variable to hold the html content of certain elements we will use in our page/pdf document
    var fullName = document.getElementById("fullName").innerHTML;
    var currentDate = document.getElementById("currentDate").innerHTML;

 
    // Standard document ready function
    $(document).ready(function(){

        // OnClick function fires when the button with id of "gpdf" is clicked.
        $("#gpdf").click(function(){

        
        // USER'S NAME TEXT
            // More of the same for the user's name, except we are changing the text color using RGB parameters.
            doc.setFontSize(12);
            doc.setTextColor(0, 0, 128);
            doc.text("Hola usuario:" + fullName, 25.0, 7.0, 'center');

        // OPEN DOCUMENT IN NEW WINDOW
            // The documentation says to use "doc.output('dataurlnewwindow')", but this would only open in Firefox, and not in Chrome.
            // The workaround to get it to work in both is:
            window.open(URL.createObjectURL(doc.output("blob")))

         // OPTION TO DOWNLOAD THE PDF INSTEAD OF OPENING IN NEW WINDOW   
            /* If you wanted to download the pdf on button click instead of opening in a new window, you would simply comment out or delete the "window.open(URL.createObjectURL(doc.output("blob")))" code above and use "doc.save('certificate.pdf');" instead. You can replace the string in the save function with a variable to make the file name dynamic. */
        });});

</Script>
</xmod:masterview>

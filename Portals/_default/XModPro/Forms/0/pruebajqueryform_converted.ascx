<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.FormBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls.Form" TagPrefix="xmod" %>
<xmod:FormView runat="server"><AddItemTemplate><xmod:AddForm runat="server">
  

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_pruebajqueryform">
    <style type="text/css">
      .xmp-pruebajqueryform { padding: 10px 5px 5px 5px; }
      .xmp-pruebajqueryform .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-pruebajqueryform label.xmp-form-label, .xmp-pruebajqueryform span.xmp-form-label{ display:block; float:left; width: 75px;text-align: left; margin-right: 5px; }
      .xmp-pruebajqueryform .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>
<a href="#" class="my-button" id="linkkks">Click Me!</a>
<img src="~/images/help_icon.gif" class="help-icon" />
<div class="xmp-form xmp-pruebajqueryform">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="pruebajquery">seleccionar opcion</Label><DropDownList Id="pruebajquery"><ListItem Value="opcionuno">OPcion 1</ListItem><ListItem Value="opciondos">OPcion 2</ListItem><ListItem Value="opciontres">OPcion 3</ListItem><ListItem Value="opcioncuatro">OPcion 4</ListItem><ListItem Value="opcioncinco">OPcion 5</ListItem></DropDownList></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="input_test">excribir algo</Label><TextBox Id="input_test" MaxLength="45"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="datapicker_test">escribir texto</Label><TextArea Id="datapicker_test" Nullable="true"></TextArea></div>
    <div class="xmp-form-row"><Label class="xmp-form-label NormalBold">&nbsp;</Label><AddButton Text="Add"></AddButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div>
  
<input type="text">

  <jQueryReady>
function PrimeraMayuscula(string){
 return string.charAt(0).toUpperCase() + string.slice(1); 
}

  $("select").change(function(){
    var mayus = PrimeraMayuscula(this.value); 
    
    alert("The text has been changed."+mayus);
  });

  </jQueryReady>
<jQueryReady>
    
   $("#linkkks").click(function() {
        alert("Hello world!");
      });
     
  </jQueryReady>
  
</xmod:AddForm></AddItemTemplate><EditItemTemplate><xmod:EditForm runat="server">

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_pruebajqueryform">
    <style type="text/css">
      .xmp-pruebajqueryform { padding: 10px 5px 5px 5px; }
      .xmp-pruebajqueryform .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-pruebajqueryform label.xmp-form-label, .xmp-pruebajqueryform span.xmp-form-label{ display:block; float:left; width: 75px;text-align: left; margin-right: 5px; }
      .xmp-pruebajqueryform .xmp-button { margin-right: 5px; }
    </style>
  </ScriptBlock>


<div class="xmp-form xmp-pruebajqueryform">
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="pruebajquery">seleccionar opcion</Label><DropDownList Id="pruebajquery"><ListItem Value="opcionuno">OPcion 1</ListItem><ListItem Value="opciondos">OPcion 2</ListItem><ListItem Value="opciontres">OPcion 3</ListItem><ListItem Value="opcioncuatro">OPcion 4</ListItem><ListItem Value="opcioncinco">OPcion 5</ListItem></DropDownList></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="input_test">excribir algo</Label><TextBox Id="input_test" MaxLength="45"></TextBox></div>
    <div class="xmp-form-row"><Label CssClass="xmp-form-label NormalBold" For="datapicker_test">escribir texto</Label><TextArea Id="datapicker_test" Nullable="true"></TextArea></div>
    <div class="xmp-form-row"><Label class="xmp-form-label NormalBold">&nbsp;</Label><UpdateButton Text="Update"></UpdateButton><CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"></CancelButton></div>
  </div></xmod:EditForm></EditItemTemplate></xmod:FormView>

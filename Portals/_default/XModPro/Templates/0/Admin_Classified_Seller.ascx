<%@ Control Language="vb" AutoEventWireup="false" Inherits="KnowBetter.XModPro.TemplateBase" %>
<%@ Register Assembly="KnowBetter.XModPro.Web.Controls" Namespace="KnowBetter.XModPro.Web.Controls" TagPrefix="xmod" %>
<xmod:masterview runat="server">
<xmod:ScriptBlock runat="server" ScriptId="SellerCSS" BlockType="HeadScript" RegisterOnce="True">
  <style type="text/css">
    .pager-active {
      color: #fff !important;
      background-color: #337ab7 !important;
      border-color: #337ab7 !important;
    }  
  </style>    
</xmod:ScriptBlock>

<xmod:Template runat="server" UsePaging="True" Ajax="True" AddRoles="Administrators" EditRoles="Administrators" DeleteRoles="Administrators" DetailRoles="Administrators">
  <ListDataSource CommandText="SELECT [SellerID], [UserID], [Date_Created], [Date_Updated], [UpdatedBy], [Seller_Name], [Seller_Location], [Seller_Level], [Banned], [IsDeleted] FROM XMP_Classified_Seller"/>
  <DetailDataSource CommandText="SELECT [SellerID], [UserID], [Date_Created], [Date_Updated], [UpdatedBy], [Seller_Name], [Seller_Address], [Seller_Location], [Seller_Phone], [Seller_Email], [Show_Address_By_Default], [Show_Phone_By_Default], [Seller_Image], [Seller_Level], [Approved_Ads], [Agree], [Banned], [IsDeleted] FROM XMP_Classified_Seller WHERE [SellerID] = @SellerID">
    <Parameter Name="SellerID" />
  </DetailDataSource>
  <DeleteCommand CommandText="DELETE FROM XMP_Classified_Seller WHERE [SellerID] = @SellerID">
    <Parameter Name="SellerID" />
  </DeleteCommand>
  
  <Pager 
    PageSize="5" 
    ShowTopPager="False" 
    ShowBottomPager="True" 
    ShowFirstLast="True" 
    FirstPageCaption="First" 
    LastPageCaption="Last" 
    ShowPrevNext="True" 
    NextPageCaption="&raquo;" 
    PrevPageCaption="&laquo;"
    CurrentPageCssClass="pager-active">
    
    <ul class="pagination">
      <li>{pager}</li>
    </ul>

  </Pager>
  
  <SearchSort 
    FilterExpression="Seller_Name LIKE '%{0}%'"
    SearchLabelText="Search For:" SearchButtonText="GO" 
    SortFieldNames="Seller_Name,Seller_Location,Seller_Level,Date_Created"
    SortFieldLabels="Name,Location,Level,Created"
    SearchBoxCssClass="form-control"
    SearchButtonCssClass="btn btn-default"
    SortButtonText="Go"
    SortButtonCssClass="btn btn-default"
    SortFieldListCssClass="form-control">
    
    <div class="row">
      <div class="col-sm-6">
        <div class="input-group">
          {SearchBox}
          <span class="input-group-btn">
            {SearchButton}
          </span>
        </div>
      </div>
      <div class="col-sm-6">
      	<div class="form-inline">
          <div class="form-group">
            <label class="control-label">Sort</label>
            {SortFieldList}
            {SortButton}
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                {ReverseSort} Reverse
              </label>
            </div>
          </div>
        </div> 	
      </div>
    </div><br/>
  </SearchSort>

  <HeaderTemplate>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>ID</th>
          <th>UserID</th>
          <th>Created</th>
          <th>Updated</th>
          <th>Updated By</th>
          <th>Name</th>
          <th>Location</th>
          <th>Level</th>
          <th>Banned</th>
          <th>Is Deleted</th>
          <th width="150">&nbsp;</th>
        </tr>
      </thead>
      <tbody>
  </HeaderTemplate>
  <ItemTemplate>
        <tr>
          <td><%#Eval("Values")("SellerID")%></td>
          <td><%#Eval("Values")("UserID")%></td>
          <td><%#Eval("Values")("Date_Created")%></td>
          <td><%#Eval("Values")("Date_Updated")%></td>
          <td><%#Eval("Values")("UpdatedBy")%></td>
          <td><%#Eval("Values")("Seller_Name")%></td>
          <td><%#Eval("Values")("Seller_Location")%></td>
          <td><%#Eval("Values")("Seller_Level")%></td>
          <td><%#Eval("Values")("Banned")%></td>
          <td><%#Eval("Values")("IsDeleted")%></td>
          <td>
            <xmod:EditLink runat="server" Text="Edit">
              <Parameter Name="SellerID" Value='<%#Eval("Values")("SellerID")%>' />
            </xmod:EditLink>
            <xmod:DeleteLink runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');">
              <Parameter Name="SellerID" Value='<%#Eval("Values")("SellerID")%>' />
            </xmod:DeleteLink>
            <xmod:DetailLink runat="server" Text="Details">
              <Parameter Name="SellerID" Value='<%#Eval("Values")("SellerID")%>' />
            </xmod:DetailLink>
          </td>
        </tr>
  </ItemTemplate>
  <FooterTemplate>
      </tbody>
    </table>
  </FooterTemplate>

  <DetailTemplate>
    
    <div class="media">
      <a class="media-left" href="#">
        <img class="img-thumbnail" src="../Portals/0/Images/avatar.png" style="max-width: 100px" alt="<%#Eval("Values")("Seller_Name")%>">
      </a>
      <div class="media-body">
        <h5 class="media-heading"><%#Eval("Values")("Seller_Name")%></h5>
        <p>SellerID: <%#Eval("Values")("SellerID")%><br/>
           UserID: <%#Eval("Values")("UserID")%><br/>
           Level: <%#Eval("Values")("Seller_Level")%><br/>
           Approved Ads: <%#Eval("Values")("Approved_Ads")%></p>
      </div>
    </div>
    
    <h4>Seller Profile</h4>
    
    <table class="table table-bordered table-striped">
      <thead>
      	<tr>
          <th>Address</th>
          <th>Location</th>
          <th>Phone</th>
          <th>Email</th>
          <th>Show Address</th>
          <th>Show Phone</th>
          <th>Created</th>
          <th>Updated</th>
          <th>Updated By</th>
          <th>Banned</th>
          <th>Deleted</th>
        </tr>
      </thead>
      <tbody>
      	<tr>
          <td><%#Eval("Values")("Seller_Address")%></td>
          <td><%#Eval("Values")("Seller_Location")%></td>
          <td><%#Eval("Values")("Seller_Phone")%></td>
          <td><%#Eval("Values")("Seller_Email")%></td>
          <td><%#Eval("Values")("Show_Address_By_Default")%></td>
          <td><%#Eval("Values")("Show_Phone_By_Default")%></td>
          <td><%#Eval("Values")("Date_Created")%></td>
          <td><%#Eval("Values")("Date_Updated")%></td>
          <td><%#Eval("Values")("UpdatedBy")%></td>
          <td><%#Eval("Values")("Banned")%></td>
          <td><%#Eval("Values")("IsDeleted")%></td>         
        </tr>
      </tbody>

    </table>

    <xmod:ReturnLink runat="server" CssClass="btn btn-default" Text="&lt;&lt; Go Back" />
    <hr />

  </DetailTemplate>
</xmod:Template>
<div>
  <xmod:AddLink runat="server" CssClass="btn btn-primary" Text="New Seller" />
</div></xmod:masterview>
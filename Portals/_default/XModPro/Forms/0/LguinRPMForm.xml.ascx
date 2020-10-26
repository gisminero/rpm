<Forms FormName="LguinRPMForm">
  <Style Theme="dnn" LabelAlign="top"    LabelWidth=""/>
  <Form Type="Add">
    <Data TableName="Users" Key="UserID" SelectedFields="Username,Email" />
    <Controls>
      <TextBox Id="Username" Width="250" MaxLength="100" DataField="Username">
        <Label For="Username">Username</Label>
      </TextBox>

      <TextBox Id="Email" Width="250" MaxLength="100" DataField="Email">
        <Label For="Email">Email</Label>
      </TextBox>

      <ValidationSummary Id="vsUsers"/>


      <CommandButtons>
        <AddButton Text="Ingresar" /> 
        <UpdateButton Text="Borrar" /> 
        <CancelButton Text="Cancel" style="margin-left: 12px;" Visible="false"/> 
      </CommandButtons>
    </Controls>
  </Form>
</Forms>
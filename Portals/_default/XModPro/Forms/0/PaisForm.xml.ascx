<Forms FormName="PaisForm">
  <Style Theme="ui-lightness/ui-lightness.css" LabelAlign="left"    LabelWidth="75"/>
  <Form Type="Add">
    <Data TableName="XMP_Paises" Key="pais_id" SelectedFields="pais_nombre,habitantes" />
    <Controls>
      <TextBox Id="pais_nombre" Width="200" MaxLength="50" DataField="pais_nombre">
        <Label For="pais_nombre">Pais Nombre</Label>
      </TextBox>

      <TextBox Id="habitantes" Nullable="True" DataField="habitantes">
        <Label For="habitantes">Habitantes</Label>
      </TextBox>


      <CommandButtons>
        <AddButton Text="Add" /> 
        <UpdateButton Text="Update" /> 
        <CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"/> 
      </CommandButtons>
    </Controls>
  </Form>
</Forms>
<Forms FormName="pruebajqueryform">
  <Style Theme="dnn" LabelAlign="left"    LabelWidth="75"/>
  <Form Type="Add">
    <Controls>
      <DropDownList Id="pruebajquery">
        <Label For="pruebajquery">seleccionar opcion</Label>

        <ListItem Value="opcionuno">OPcion 1</ListItem>
        <ListItem Value="opciondos">OPcion 2</ListItem>
        <ListItem Value="opciontres">OPcion 3</ListItem>
        <ListItem Value="opcioncuatro">OPcion 4</ListItem>
        <ListItem Value="opcioncinco">OPcion 5</ListItem>
      </DropDownList>

      <TextBox Id="input_test" MaxLength="45">
        <Label For="input_test">excribir algo</Label>
      </TextBox>

      <TextArea Id="datapicker_test" Nullable="true">
        <Label For="datapicker_test">escribir texto</Label>
      </TextArea>


      <CommandButtons>
        <AddButton Text="Add" /> 
        <UpdateButton Text="Update" /> 
        <CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"/> 
      </CommandButtons>
    </Controls>
  </Form>
</Forms>
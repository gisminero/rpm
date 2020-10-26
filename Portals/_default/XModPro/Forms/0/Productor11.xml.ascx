<Forms FormName="Productor1">
  <Style Theme="ui-blitzer/jquery-ui-1.7.2.custom.css" LabelAlign="left"    LabelWidth=""/>
  <Form Type="Add">
    <Data TableName="XMP_Productor" Key="id_productor" SelectedFields="id_provincia,localidad,caracter" />
    <Controls>
      <TextBox Id="localidad" Width="200" MaxLength="50" DataField="localidad">
        <Label For="localidad">Localidad</Label>
      </TextBox>

      <TextBox Id="caracter" Width="200" MaxLength="50" DataField="caracter">
        <Label For="caracter">Caracter</Label>
      </TextBox>

      <DropDownList Id="id_provincia" DataField="id_provincia" DataSourceId="id_provincia_tabla" DataTextField="nombre_provincia" DataValueField="id_provincia">
        <Label For="id_provincia">ProvinciA</Label>

      </DropDownList>

      <ValidationSummary Id="vsXMP_Productor"/>


<ControlDataSource Id="id_provincia_tabla" TableName="XMP_Provincias" Columns="id_provincia,nombre_provincia,id_pais" SortBy="id_provincia" SortOrder="asc" />

<ControlDataSource Id="id_pais" TableName="XMP_Paises" Columns="pais_id,pais_nombre" SortBy="pais_id" SortOrder="asc" />

      <CommandButtons>
        <AddButton Text="Agregar" /> 
        <UpdateButton Text="Actualizar" /> 
        <CancelButton Text="Cancelar" style="margin-left: 12px;" Visible="true"/> 
      </CommandButtons>
    </Controls>
  </Form>
</Forms>
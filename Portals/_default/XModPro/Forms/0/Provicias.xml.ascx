<Forms FormName="Provicias">
  <Style Theme="none" LabelAlign="left"    LabelWidth=""/>
  <Form Type="Add">
    <Data TableName="XMP_Provincias" Key="id_provincia" SelectedFields="nombre_provincia,cantidad_habitantes,id_pais" />
    <Controls>
      <TextBox Id="nombre_provincia" Width="200" MaxLength="50" DataField="nombre_provincia">
        <Label For="nombre_provincia">Nombre Provincia</Label>
      </TextBox>

      <TextBox Id="cantidad_habitantes" Nullable="True" DataField="cantidad_habitantes">
        <Label For="cantidad_habitantes">Cantidad Habitantes</Label>
      </TextBox>

      <DropDownList Id="id_pais" DataField="id_pais" DataSourceId="id_pais_en_provincias" DataTextField="pais_nombre" DataValueField="pais_id">
        <Label For="id_pais">Pais</Label>

      </DropDownList>

      <ValidationSummary Id="vsXMP_Provincias"/>


<ControlDataSource Id="id_pais_en_provincias" TableName="XMP_Paises" Columns="pais_id,pais_nombre" SortBy="pais_id" SortOrder="asc" />

      <CommandButtons>
        <AddButton Text="Add" /> 
        <UpdateButton Text="Update" /> 
        <CancelButton Text="Cancel" style="margin-left: 12px;" Visible="true"/> 
      </CommandButtons>
    </Controls>
  </Form>
</Forms>
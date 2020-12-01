## Bienvenido al Registro de Productores Mineros

You can use the [editor on GitHub](https://github.com/gisminero/rpm/edit/gh-pages/index.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/gisminero/rpm/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.


## Lista de directorios desestimados
## .gitignore
Referencia a la herramienta para backup de bd [link](https://docs.microsoft.com/en-us/sql/tools/bcp-utility?redirectedfrom=MSDN&view=sql-server-ver15)
bcp "dbo.EventLog" out c:\data\copia.txt -S "DESKTOP-BRKRA5N\SQLEXPRESS" -d DNNBD -U "" -P ""  -c  -T
## Path genreal<br>
├───admin // uso interno <br>
│   ├───Containers<br>
│   ├───Menus<br>
│   │   ├───DNNActions<br>
│   │   ├───DNNAdmin<br>
│   │   └───ModuleActions<br>
│   │       └───images<br>
│   ├───Modules<br>
│   │   └───App_LocalResources<br>
│   ├───Portal<br>
│   │   └───App_LocalResources<br>
│   ├───Sales<br>
│   ├───Security<br>
│   │   └───App_LocalResources<br>
│   ├───Skins<br>
│   │   └───App_LocalResources<br>
│   ├───Tabs<br>
│   │   └───App_LocalResources<br>
│   └───Users<br>
│       └───App_LocalResources<br>
├───App_Browsers //Uso interno<br>
├───App_Data<br>
│   ├───ClientDependency<br>
│   ├───**ExportImport**  //Importante-------------------------<br>
│   │   └───2020-10-27_21-00-42<br>
│   ├───ExtensionPackages<br>
│   ├───FipsCompilanceAssemblies<br>
│   ├───RadSpell<br>
│   ├───Search<br>
│   ├───_imagecache<br>
│   └───_ipcount<br>
|   └─── **archivos de base de datos** // Importante<br>
├───App_GlobalResources //uso interno<br>
├───bin //uso interno<br>
│   └───Providers<br>
├───Components //uso interno<br>
│   └───ResourceInstaller<br>
├───Config // PREGUNTAR<br>
│   ├───Backup_202007272303<br>
│   └───Backup_202007272307<br>
├───controls //uso interno<br>
│   ├───App_LocalResources<br>
│   └───CountryListBox<br>
│       └───Data<br>
├───DesktopModules //uso interno<br>
│   ├───Admin<br>
│   │   ├───Authentication<br>
│   │   ├───Console<br>
│   │   ├───Dnn.EditBar<br>
│   │   ├───Dnn.PersonaBar<br>
│   │   ├───EditExtension<br>
│   │   ├───FiftyOneClientCapabilityProvider<br>
│   │   ├───HtmlEditorManager<br>
│   │   ├───ModuleCreator<br>
│   │   ├───Security<br>
│   │   ├───UrlManagement<br>
│   │   └───ViewProfile<br>
│   ├───AuthenticationServices<br>
│   ├───Connectors<br>
│   ├───CoreMessaging<br>
│   ├───DDRMenu<br>
│   ├───DigitalAssets<br>
│   ├───HTML<br>
│   ├───Journal<br>
│   ├───MemberDirectory<br>
│   ├───MVC<br>
│   ├───RazorModules<br>
│   ├───SiteExportImport<br>
│   ├───SocialGroups<br>
│   └───**XModPro** //Importante-------------------------<br>
│       ├───App_LocalResources<br>
│       ├───help<br>
│       ├───images<br>
│       ├───**plugins** //Importante-------------------------<br>
│       │   └───passwordstrength<br>
│       ├───scripts<br>
│       └───styles<br>
├───Documentation //uso interno<br>
├───Icons //uso interno<br>
│   └───Sigma<br>
├───images //uso interno<br>
│   ├───Branding<br>
│   ├───FileManager<br>
│   │   ├───files<br>
│   │   └───Icons<br>
│   ├───Flags<br>
│   └───Search<br>
├───Install //uso interno<br>
├───js //uso interno<br>
│   └───Debug<br>
├───Licenses<br>
├───**plugins** //Importante-------------------------<br>
│   └───passwordstrength<br>
├───**Portals** //Importante-------------------------<br>
│   ├───0<br>
│   │   ├───Images<br>
│   │   ├───Templates<br>
│   │   └───Users<br>
│   ├───0-System<br>
│   │   └───Cache<br>
│   └───_default<br>
│       ├───Cache<br>
│       ├───Config<br>
│       ├───Containers<br>
│       │   ├───Xcillion<br>
│       │   └───_default<br>
│       ├───EventQueue<br>
│       ├───Install<br>
│       ├───Logs<br>
│       │   └───LogConfig<br>
│       ├───MergedTemplate<br>
│       ├───Skins<br>
│       │   ├───Reflect_Xile_02.04.00_UnzipMeFirst<br>
│       │   │   └───docs<br>
│       │   │       └───img<br>
│       │   ├───Xcillion<br>
│       │   │   ├───Bootstrap<br>
│       │   │   │   ├───css<br>
│       │   │   │   ├───fonts<br>
│       │   │   │   └───js<br>
│       │   │   ├───Common<br>
│       │   │   ├───Css<br>
│       │   │   ├───Images<br>
│       │   │   ├───Includes<br>
│       │   │   ├───Js<br>
│       │   │   └───Menus<br>
│       │   │       └───MainMenu<br>
│       │   └───_default<br>
│       ├───Smileys<br>
│       ├───Templates<br>
│       ├───Users<br>
│       └───XModPro<br>
│           ├───Feeds<br>
│           │   └───0<br>
│           ├───Forms<br>
│           │   └───0<br>
│           └───Templates<br>
│               └───0<br>
├───Providers<br>
│   ├───ClientCapabilityProviders<br>
│   ├───DataProviders<br>
│   ├───FolderProviders<br>
│   ├───HtmlEditorProviders<br>
│   └───LoggingProviders<br>
└───Resources<br>
    ├───ControlPanel<br>
    ├───Dashboard<br>
    ├───Libraries<br>
    │   ├───jQuery<br>
    │   │   └───03_05_01<br>
    │   ├───jQuery-Migrate<br>
    │   │   └───03_02_00<br>
    │   ├───jQuery-UI<br>
    │   │   └───01_12_01<br>
    │   ├───Knockout<br>
    │   │   └───03_03_00<br>
    │   ├───Knockout.Mapping<br>
    │   │   └───02_04_01<br>
    │   └───Selectize<br>
    │       └───00_12_06<br>
    ├───Search<br>
    └───Shared<br>
        ├───components<br>
        │   ├───CodeEditor<br>
        │   ├───Toast<br>
        │   ├───Tokeninput<br>
        │   └───UserFileManager<br>
        ├───scripts<br>
        │   ├───jquery<br>
        │   └───TreeView<br>
        └───stylesheets

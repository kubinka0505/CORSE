<h1 align=center>
	<img src=Documents/Pictures/Registry.svg width=175>
	<br>
	CORSE
</h1>

<p align=center>
	<img src="https://img.shields.io/badge/Platform-Windows%208-0078D6?logo=Windows&LogoColor=white&style=for-the-badge">　<a href="License.txt"><img src="https://img.shields.io/github/license/kubinka0505/CORSE?logo=readthedocs&logoColor=white&style=for-the-badge"></a>　<img src="https://img.shields.io/github/repo-size/kubinka0505/CORSE?style=for-the-badge">　<a href="https://codeclimate.com/github/kubinka0505/CORSE"><a href="https://app.codacy.com/gh/kubinka0505/CORSE"><img src="https://img.shields.io/codacy/grade/0b21f77d557f42bbaa447bca8d3b03f5?logo=codacy&style=for-the-badge"></a>
</p>

## Description 📝
Collection of [Windows Registry](https://en.wikipedia.org/wiki/Windows_Registry) entry files containing file explorer context menu extensions. 🗃️

---

## Extensions 🗃️
| № | Name | Description | Preview |
|:-:|:-:|:-|:-:|
| 01 | [`Run as User`](Files/Extensions/Run_as_User) | Famous `set __COMPAT_LAYER=RunAsInvoker` line implemented as an extension. | <img src="Documents/Pictures/Showcase/Run_as_User/Executable.png" height=50%> |
| 02 | [`Copy as Path`](Files/Extensions/Copy_as_Path)<sup>1</sup> | Copy various path properties of the selected file or directory instantly. | <img src="Documents/Pictures/Showcase/Copy_as_Path/File.png" height=50%> |
| 03 | [`Open CMD Here`](Files/Extensions/Open_CMD_Here) | Allows you to open `CMD.exe` in any directory or drive. | <img src="Documents/Pictures/Showcase/Open_CMD_Here/Directory.png" height=50%> |
| 04 | [`Copy Contents`](Files/Extensions/Copy_Contents) | Copies file contents to user clipboard without opening requirement. | <img src="Documents/Pictures/Showcase/Copy_Contents/File.png" height=50%> |
| 05 | [`View Checksum`](Files/Extensions/View_Checksum)<sup>1</sup> | Show certain file checksum as command window with copy prompt. | <img src="Documents/Pictures/Showcase/View_Checksum/File.png" height=50%> |
| 06 | [`Hold Date`](Files/Extensions/Hold_Date)<sup>1</sup> | Keeps selected file dates intact BEFORE command prompt window is `Enter`.<br>Does NOT work with files containing apostrophe in name. (`'`) | <img src="Documents/Pictures/Showcase/Hold_Date/File.png" height=50%> |

<sup>1</sup> - requires [PowerShell](https://wikipedia.org/wiki/PowerShell)

---

### Variables 📝
A brief [documentation](https://learn.microsoft.com/en-us/windows/win32/shell/context-menu).

| № | Name (`CommandFlags`) | Description | Parameters |
|:-:|:-|:-|:-|
| 01 | Default | | Safe display text - visible if `MuiVERB` resource fails to load.<br><br>ℹ️ Supports context menu keyboard shortcut underlines.<br>- (`&x` for <kbd>X</kbd>, etc.) |
| 02 | `MuiVERB` | Resource display text. | Text<br>`@<Resource>,-<ID>` |
| 03 | `Icon` | Display icon. | `*(.ico/.exe)`<br>`<Resource>,-<Index>` |
| 04 | `HasLUAShield` (`16`) | **Adds small UAC shield** to icon. | |
| 05 | `AppliesTo` | Curated lists of supported file extensions. | `System.FileExtension:=.ext OR ...` |
| 06 | `MultiSelectModel` | Specifies how many files (arguments) the option can handle. | `Single` = 1<br>`Player` = Infinity<br>`Document` = up to 100 (each is a separate window) |
| 07 | `Position` | Placement of text in context menu. | `Top`<br>`Bottom` |
| 08 | `SeparatorBefore` (`8`)| Adds separator before option label. | |
| 09 | `SeparatorAfter` (`1024`) | Adds separator after option label. | |
| 10 | `ExtendedSubCommandsKey` | Path to cascading menu keys. | — |
| 11 | `Extended` | Make extension available **only when <kbd>SHIFT</kbd>** key is pressed. | |
	
### Useful links and software 🔗
| № | Name | Description |
|:-:|:-:|:-:|
| 01 | [**`OmegaT-Windows`**](https://github.com/Belarus/OmegaT-Windows/tree/master/Windows/source/8/mui/Windows/System32/be-BY) | Decompiled **Windows 8** **MUI verbs** resource stringtables. 📚 |
| 02 | [**IconsExtract**](https://www.nirsoft.net/utils/iconsext.html) | Utility for extracting icons from resource files. 🖼️ | 
| 03 | [**Exported `System32` icons archive**](https://github.com/kubinka0505/CORSE/raw/master/Files/System32_DLL_Icons.zip) | An archive containing `16x16` resource icons. 🖼️<br>ℹ️ Scaled to a higher resolution for workflow enhancement.<br>ℹ️ An alternative for `IconsExtract`. |
| 04 | [`System` attributes](https://learn.microsoft.com/en-us/previous-versions//ff521735(v=vs.85)#system) | Useful for `AppliesTo` parameter. |
| 05 | [Advanced Query Syntax](https://learn.microsoft.com/pl-pl/windows/win32/lwef/-search-2x-wds-aqsreference#desktop-search-syntax) | Syntax for `AppliesTo` parameters. |
| 06 | [File Type Registration](https://windowssucks.wordpress.com/file-type-registration) | More parameters, **mostly undocumented.** ⚠️ |<h1 align=center> |
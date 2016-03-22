# FineUI
ExtJS based open source ASP.NET Controls.

Fork from http://fineui.codeplex.com/

Before run this project: 

1. download extjs 4.2.* and unzip it to `extjs_builder/extjs_source_all` path
2. run `extjs_builder/build.bat`
3. under `res` folder, unzip the `icon.zip` and `images.zip`
4. run the `FineUI.sln`



Changes

+ use `nuget` to install `Newtonsoft.Json` and update it to the latest version
+ modify the web.config to fit the IIS Integrated Mode



### v4.2.3.1

@ 2016-01-17

+ MessageBox
  + add `MessageBox` which is more powerful than `Alert`
  + add `F.show` in `F.util.js`

+ Notify
  + based on https://github.com/EirikLorentsen/Ext.ux.window.Notification
  + add `F.notify` in `F.util.js`
  + add `Ext.ux.window.Notification` in `Notification.js`
  + add reference for `Notification.js` and `Notification.css` in `build.bat` and `build_only_css.bat`

+ Group & Summary
  + ext-4.2.1 have a bug here, see https://www.sencha.com/forum/showthread.php?264961-Grid-Grouping-Bug 
  + add `EnableGroup` in `Grid.cs` 
  + add `GridGroupEventArgs`
  + add `SummaryType` and `SummaryRenderer` in `GridColumn.cs`

+ GridColumn
  + add `DataType` in `GridColumn` 
  + add `GridColumnDataType`
  + prevent to change value into `string` when `DataType` set for `BoundField`

+ EnableColumnHide
  + add this property

+ GridSort
  + hide sort menu where sort is disabled
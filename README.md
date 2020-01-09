# TestResourcesIntoModule

Demo project to test how Xcode handle resources defined into external module.

The main goal is to create a module (framework) containing the basic UI components to be used into multiple Apps of the same company, but I have some issues with Xcode badly handling Assets (especially Named Colors supporting Dark and Light appearances) coming from external modules when they are used in Storyboards or XIB files. 

As already described in this article: https://devblog.xero.com/managing-ui-colours-with-ios-11-asset-catalogs-16500ba48205, it seems that Xcode doesn't correctly handle named color defined outside the main bundle. 

It seems that also the last version available of Xcode, as today: Version 11.3 (11C29), doesn't correctly handle inside storyboards named colors defined outside the main bundle.

### Workaround
At the moment (if the Framework project source code is available locally) it's possible re-declare the Assets (manualy, or with some scripts that does a smart copy) to copy inside the Main bundle project the assets where the named colors are defined. For example using an rsync script like that:

```bash
rsync -azvh --delete ResourcesModule/ResourcesModule/Synced.xcassets TestResourcesIntoModule/Generated/
```

Another option would be to import the UI module as a git submodule into the main project, so that technically the Assets are declared and included into the main module and Xcode doesn't do any strange behaviour.


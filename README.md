# Contact

A new Flutter application.

## How to Use 

**Just Goooo:**

Download or clone this repo by using the link below:

```
https://github.com/magicpro97/Contact
```

## Generate
Use build_runner to generate necessary files

Use get_cli to generate project file: [https://pub.dev/packages/get_cli]

Use to update locale fileget generate locales assets/locales

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.inject.summary
**/*.inject.dart
**/*.g.dart
```

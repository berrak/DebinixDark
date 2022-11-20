![DebinixDark theme](./debinixdark.png)

[![GitHub version](https://img.shields.io/github/release/berrak/DebinixDark.svg?logo=github&logoColor=ffffff)](https://github.com/berrak/DebinixDark/releases/latest)
[![GitHub Release Date](https://img.shields.io/github/release-date/berrak/DebinixDark.svg?logo=github&logoColor=ffffff)](https://github.com/berrak/DebinixDark/releases/latest)
[![GitHub stars](https://img.shields.io/github/stars/berrak/DebinixDark.svg?logo=github&logoColor=ffffff)](https://github.com/berrak/DebinixDark/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/berrak/DebinixDark.svg?logo=github&logoColor=ffffff)](https://github.com/berrak/DebinixDark/issues)
![Badge Hit Counter](https://visitor-badge.laobi.icu/badge?page_id=berrak_DebinixDark)

# Arduino IDE Dark Theme

Install the `DebinixDark` for `Arduino IDE 1.8.x` and later. This Arduino IDE theme is inspired by the Visual Studio Code (VSC) extension `C++ UI Dark Theme`. A theme downloaded more than 12 million times. Thus a lot of developers love it. However, `Arduino IDE 2.x` does not yet support custom themes.

## Why you should use the theme

Looking at the white background screen for a long time is unsuitable for the eyes. Your eyes become tired and causes distraction. In addition, `DebinixDark` theme syntax highlighting improves the readability and context of the text and helps spot errors quicker. 

* Another reason is that it's so simple to install, thus no reason not to try it out.
* Although you find some existing Arduino IDE themes, most are old, and the recommended installation is outdated.

## How to Install?

Find longer install instructions at the [Arduino support site](https://support.arduino.cc/hc/en-us/articles/4408893497362-Use-a-custom-theme-for-Arduino-IDE-1).

* Navigate to the [Releases page](https://github.com/berrak/DebinixDark/releases).
* Download the latest released ZIP archive for example in the Download folder. 

### macOS/Linux/Ubuntu

Unzip the content and run the `Makefile` to create a `new zip archive` with the correct internal organization. You cannot use
the GitHub zip file directly. Instead, run `make help` to view a small menu. 

```
make theme
```
Copy the new zip archive to your `Arduino sketchbook/theme` folder. You must create the `theme` folder if this is your first custom theme.

* Open Arduino IDE.
* Open `File->Preferences` and find the `DebinixDark` in the `Theme` drop-down menu.
* Restart Arduino IDE, and enjoy.

### Windows

Install the `zip` utility to create the archive manually. The option `-x` can be used to exclude non-theme files.

```
zip -r DebinixDark.zip * -x "*zip" -x "*Makefile*"
```
Copy the zip archive to your `Arduino sketchbook/theme` folder. You must create the `theme` folder if this is your first custom theme.

* Open Arduino IDE.
* Open `File->Preferences` and find the `DebinixDark` in the `Theme` drop-down menu.
* Restart Arduino IDE, and enjoy.

## FAQ

**Q:** Why are all repository files included in the downloaded zip archive?

**A:** This is to simplify the installation in the theme folder, and Arduino IDE requires that the zip archive has a specific layout to work as a custom theme. Any extra files bundled and included in the theme folder do not negatively affect the IDE.

## Credits

The `DebinixDark` theme continues in the footsteps of the previous work by [Jeff Thompson](https://github.com/jeffThompson/DarkArduinoTheme) and others.

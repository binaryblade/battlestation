# Battlestation

Battlestation is a set of scripts to setup a new desktop or laptop for web and mobile development.

It's fully idempotent, meaning that it can be run multiple times with no side-effects. It installs, updates, or skips packages based on what's already installed.

It's designed to run on an essentially new system, macOS or Linux (my preferred flavors are mostly Ubuntu and Manjaro).

## Requirements

Supported:

- macOS Sonoma (14.x) on Apple Silicon
- macOS Ventura (13.x) on Apple Silicon
- macOS Monterey (12.x) on Apple Silicon

These should work on Intel Macs as well, but I don't have any left to test.

Older versions should work, but aren't regularly tested (I do want to build out a reasonable testing infrastructure when I get a chance). Bug reports are welcome; but may take a while to test.

## Install

- Download
- Review
- Execute

Find a way to install https://developer.apple.com/safari/technology-preview/ automatically.

Find a way to configure shells for TouchID / Watch Unlock on macOS (in `pam` modules). Is this better for dotfiles? Or does it align with the `osx` config file? Should the `osx` config file be part of dotfiles? (I'm leaning toward it's fine in here...BUT some users may want customizations--don't own an Apple Watch, for instance?)

### Dotfiles

The installation will install my dotfiles, but I want to make this optional in the future. (I expect I'll support some command line parameters.)

## Results

Battlestation installs a variety of command line utilities and other tooling for use in general development and DevOps, along with various languages we use.

(Expand details later.)

## Customization

## Contributing

### Testing Your Changes

Test your changes by running the script on a fresh install of macOS or Linux. You can use the free and open source emulator UTM.

Tip: Make a "golden image" of your preferred versions of macOS completed and your user created. Then duplicate that machine (over time I want to script this into the project) to test the script each time on a fresh virtual machine with your desired operating systems.

## License

Copyright © 2024 Binary Blade, LLC. It is free software, and may be distributed under the terms specified in the LICENSE file.

###

(Expand details later.)

## Customization

## Contributing

### Testing Your Changes

Test your changes by running the script on a fresh install of macOS or Linux. You can use the free and open source emulator UTM.

Tip: Make a "golden image" of your preferred versions of macOS completed and your user created. Then duplicate that machine (over time I want to script this into the project) to test the script each time on a fresh virtual machine with your desired operating systems.

## License

Copyright © 2024 Binary Blade, LLC. It is free software, and may be redistributed under the terms specified in the [LICENSE] file.

## About Binary Blade, LLC

This repo is maintained and funded by Binary Blade, LLC. The names and logos for binaryblade are trademarks of Binary BLade, LLC.

We love open source software! See our other projects and please consider hiring us to help develop your open source (or closed source) portfolio. In modern society, every company is a software company.

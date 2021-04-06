![](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)

<div align="center"> <a href="http://github.com/oh-my-fish/oh-my-fish"> <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png"> </a></div><br>

atom
=======

Creates `atom` command line shortcut to launch Atom Text editor for [Oh My Fish](https://www.github.com/oh-my-fish/oh-my-fish).

Install
-------

> *Note*: You need to have `Atom` installed.

```fish
$ omf install https://github.com/behoof4mind/plugin-atom
```

If your Atom Text app is in a non-standard location, you can add specify the path to `atom` in your `config.fish`:

```fish
set -g ATOM_PATH "/Applications/behoof4mind/Atom.app/Contents/SharedSupport/bin/atom"
```

Usage
-----

```fish
$ atom [file ...]        edit the given files
$ atom [directory ...]   open the given directories
```

License
=======

[MIT](http://opensource.org/licenses/MIT) © [beehoof4mind](http://github.com/beehoof4mind)

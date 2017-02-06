# Talisker
## Developer Tools

This is a meta-project which builds all of the Talisker developer tools
as a single package.

### Third-party components

Some third-party components can be built as part of this tree, or built
separately. To build them as part of the tree, simply obtain a source
tarball for the component, and un-tar it into the relevant directory
prior to running `configure`.

For example, download [autoconf-2.69](https://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz), change
to the `Tools` directory, and extract the tarball:

```
$ cd Tools
$ tar xvf /path/to/autoconf-2.69.tar.gz
$ cd ..
$ ./configure ...
```

The Developer Tools `configure` script will ensure that Autoconf is configured
with the appropriate options and is built at the correct time.

The following third-party components are supported in this fashion:

#### GNU Autoconf 2.69

* https://ftp.gnu.org/gnu/autoconf/
* `Tools/autoconf-2.69`

#### GNU Automake 1.11

* https://ftp.gnu.org/gnu/autoconf/
* `Tools/automake-1.11`

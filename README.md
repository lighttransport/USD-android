# USD(Universal Scene Description) build script for Android

**This project is obsolete. Please use https://github.com/syoyo/USD-aarch64 **


Build scripts for building USD on Android.
All required dependency can be pulled using git submodules.

## Setup

```
$ git submodule update --init --recursive
```

## How to build for Android

### Build TBB

```
$ ./scripts/bootstrap-tbb-cmake.sh`
```

### Build OpenSubdiv

```
$ ./scripts/bootstrap-osd-cmake.sh`
```

### Build USD

```
$ ./scripts/bootstrap-usd-cmake.sh`
```

### x64 Linux native build

x64 Linux native build is provided for developers.
(e.g. for example app development whose codebase is shared with Android and Linux)

```
$ ./scripts/x64/bootstrap-tbb-cmake.sh
```

## Note on Boost

Bosot headers required for USD are copied from 1.69.0 using bcp.
(No need to compile boost libraries)

## Licence

Build script itself is licensed under MIT.

Other libraries and codes obeys its license.


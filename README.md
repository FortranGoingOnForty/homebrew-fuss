# Homebrew Tap for FUSS

This is the Homebrew tap for [FUSS](https://github.com/FortranGoingOnForty/fuss), a tree utility for dirty git files written in modern Fortran.

## Installation

```bash
brew tap FortranGoingOnForty/fuss
brew install fuss
```

Or install directly:

```bash
brew install FortranGoingOnForty/fuss/fuss
```

## Usage

Show only dirty files (default):
```bash
fuss
```

Show all files with dirty ones marked:
```bash
fuss --all
```

## About FUSS

FUSS displays a tree structure of dirty git files (modified, untracked, etc.) with proper UTF-8 tree rendering using box-drawing characters. Files marked with ✗ are dirty (modified or untracked).

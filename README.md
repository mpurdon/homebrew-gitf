# homebrew-gitf

Homebrew tap for [gitf](https://github.com/mpurdon/gitf) — the Ghost in the
Factory CLI.

```sh
brew tap mpurdon/gitf
brew install gitf
```

The formula is bumped automatically by gitf's CI on every main build, from
the escript attached to each GitHub Release. Once installed, `brew upgrade
gitf` (or `gitf self-update`) picks up new versions.

The escript is BEAM bytecode and runs through the Erlang runtime, which the
formula depends on.

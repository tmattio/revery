# Port to Opam

## Done

- Made the benchmark and examples non-public (removed the opam files)
- Made the tests part of the `revery` package
- Inlined the Rebez library
- Removed usage of Rench
- Ported timber to opam
- Fixed flex's opam dependencies

## To Do

- Create a `ocaml-harfbuzz` package to replace `reason-harfbuzz`
- Create a `ocaml-sdl2` package to replace `reason-sdl2`
- Create a `ocaml-skia` package to replace `reason-skia`
- Move esy-angle-prebuilt to the repo and use dune to build

- Port tests
- Port bench

- Investigate esy-freetype2
- Investigate reason-native-crash-utils

- Upstream and release all the dependencies

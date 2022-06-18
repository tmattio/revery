(lang dune 2.5)

(name revery)

(documentation "https://www.outrunlabs.com/revery/api/revery/")

(source
 (github revery-u/revery))

(license MIT)

(authors "Bryan Phelps")

(maintainers "Bryan Phelps")

(formatting
 (enabled_for reason))

(generate_opam_files true)

(package
 (name revery)
 (synopsis "App toolkit built with Reason")
 (description
  "Today, Electron is one of the most popular tools for building desktop apps - using an HTML, JS, CSS stack. However, it has a heavy footprint in terms of both RAM and CPU - essentially packing an entire browser into the app. Even with that tradeoff, it has a lot of great aspects - it's the quickest way to build a cross-platform app & it provides a great development experience - as can be testified by its usage in popular apps like VSCode, Discord, and Slack.\n\nRevery is kind of like super-fast, native code Electron - with bundled React-like/Redux-like libraries and a fast build system - all ready to go!\n\nRevery is built with reasonml, which is a javascript-like syntax on top of OCaml This means that the language is accessible to JS developers.\n\nYour apps are compiled to native code with the Reason / OCaml toolchain - with instant startup and performance comparable to native C code. Revery features platform-accelerated, GPU-accelerated rendering. The compiler itself is fast, too!\n\nRevery is an experiment - can we provide a great developer experience and help teams be productive, without making sacrifices on performance?")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  bos
  ctypes
  dune-configurator
  lru
  lwt
  lwt_ppx
  markup
  ppx_deriving
  ppx_optcomp
  omd
  uucp
  uutf
  charInfo_width
  flex
  brisk-reconcilier
  timber
  (reason
   (and
    (>= 3.6.2)
    :build))
  (odoc :with-doc)))

(package
 (name reason-skia)
 (synopsis "Skia bindings for Reason")
 (depends
  (ocaml
   (>= 4.08.0))
  dune))

(package
 (name reason-harfbuzz)
 (synopsis "Harfbuzz bindings for Reason")
 (depends
  (ocaml
   (>= 4.08.0))
  dune))

(package
 (name reason-sdl2)
 (synopsis "SDL2 bindings for Reason")
 (depends
  (ocaml
   (>= 4.08.0))
  dune))

# foldFun

Purpose:
  To study functional programming and to learn the many benefits of structuring functions and ultimately your app, in such a manner.

  Specifically, this library is to write AS MANY utility functions we can come up with using only foldR!

  Bonus Points:
    For extra bonus points, define your function in both a pattern matching or guarded equation style AS WELL AS in the foldR definition (fr). This will help us all understand your thinking process.

To get started:
*You will have to go to the Haskell Platform and install the Stack tooling to use this repo*
```sh
$ git clone https://github.com/no-trbl-2-u/foldFun.git
$ cd foldFun
$ stack build
```

To start the Cabal playground:
```hs
$ stack repl
Prelude> :l Lib
Lib> -- Whatever you want --
```

In here you can test and use all the functions defined in Lib.

Don't forget to run ```:r``` everytime you make a change to and save ```Lib.hs```.


## Pattern
```hs
fr :: (a -> b -> b) -> b -> [a] -> b   -- || USAGE:
f []     = v                           -- || v = Identity/Base-Case
f (x:xs) = x (+) f xs                  -- || func(head xs) f(xs)
                                       -- || EXAMPLE:
                                       -- || sum = fr (+) 0
```

Common GHCI commands:

  ### System:
    :help            ||   :h   = show all commands
    :exit            || ctrl+d = exit GHCI

  ### Scripts:
    :load <script>   ||   :l   = load script
    :reload          ||   :r   = reload script
    :main <...args>  ||   :m   = run main.hs w/ args

  ### Info:
    :type <exp>      ||   :t   = show type info
    :info <exp>      ||   :i   = show definition info
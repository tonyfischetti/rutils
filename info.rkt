#lang info
(define collection "rutils")
(define deps '("base" "while-loop" "threading"))
(define can-be-loaded-with 'all)
(define categories '(devtools))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/rutils.scrbl" ())))
(define pkg-desc "My convenience functions")
(define version "0.3")
(define primary-file "main.rkt")
(define blurb
'("My personal convenience functions"))
(define pkg-authors '(tonyfischetti))

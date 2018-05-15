#!/usr/bin/env racket

#lang racket/base

(provide for/line progress)

(require dyoo-while-loop)

(define-syntax-rule (for/line index nameofline afile body ...)
  (let ((fobj (open-input-file afile))
        (index 0))
    (while #t
      (define nameofline (read-line fobj))
      (when (eof-object? nameofline) (begin (close-input-port fobj) (break)))
      (set! index (+ 1 index))
      (begin body ...))))

(define (progress index total where theport)
  (when where
    (define perc (round (* 100 (/ index total))))
    (fprintf theport "On ~A of ~A......... ~A%~%" index total perc)
    (flush-output theport)))

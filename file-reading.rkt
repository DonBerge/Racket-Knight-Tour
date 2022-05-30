#lang racket

(provide POSN-LIST)
(provide (struct-out posn))

(define-struct posn [x y])

(define (list->posn l) (make-posn (first l) (first (rest l)) ))

(define COORDS-LIST (file->list "knight-tour.txt"))

(define POSN-LIST (map list->posn COORDS-LIST))
#lang racket
(require 2htdp/image)
(require 2htdp/universe)
(require images/flomap)

(define-struct posn [x y])

(provide gen-tablero)
(provide place-knight)

(define KNIGHT (bitmap "knight.png"))
(define KNIGHT-SCALE-FACTOR 0.05)

(set! KNIGHT (scale 0.05 KNIGHT))

(define CELDA-ANCHO (image-height KNIGHT))
(define CELDA-MARGEN 10)
(define CELDA (square (+ CELDA-ANCHO CELDA-MARGEN) "outline" "black"))

(define (gen-fila w) (cond [(not (integer? w)) (error "The size must be an integer")]
                           [(negative? w) (error "Negative size")]
                           [(zero? w) empty-image]
                           [(= w 1) CELDA]
                           [else (overlay/xy CELDA (image-width CELDA) 0 (gen-fila (sub1 w)))]))


(define (gen-tablero w h) (cond [(zero? h) empty-image]
                              [else (overlay/xy (gen-fila w) 0 (image-height CELDA) (gen-tablero w (sub1 h)))]))

(define TABLERO-SIZE 8)

(define (place-image/posn img pt bg) (place-image img (posn-x pt) (posn-y pt) bg))

(define (get-knight-coords x y) (make-posn (* (/ (+ (* 2 x) 1) 2) (image-width CELDA)) (* (/ (+ (* 2 y) 1) 2) (image-height CELDA))))

(define (place-knight x y bg) (place-image/posn KNIGHT (get-knight-coords (sub1 x) (sub1 y)) bg))


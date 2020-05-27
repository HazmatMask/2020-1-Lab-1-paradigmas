#lang racket
(require "tda-commit.rkt")
(require "tda-commit-list.rkt")
;TDA: ZONA DE TRABAJO
;ESTRUCTURA BASE:
; ZONA DE TRABAJO + LISTA DE COMMITS
; (STRING          (COMMIT, COMMIT, COMMIT...))

;CONSTRUCTOR:

(define create_zone (lambda (N Z) (list N Z)))

;PERTENENCIA:

(define zone? (lambda (Z)
                  (if (and (commit_list? (cdr Z)) (string? (car Z)) (null? (cadr Z)))
                      #t
                      #f)))

;SELECTORES:

;EXTRAER LISTA DE ZONA DE TRABAJO:

(define get_commit_list (lambda (Z) (cdr Z)))

;MODIFICADORES:

;COPIAR LISTA DE COMMITS POR NOMBRE DE ZONAS:

(define copy_commit_list (lambda (N1 N2) (cons N2 (cdr))))

;BORRAR LISTA DE COMMITS POR NOMBRE:

(define delete-zone (lambda (N Z) (list N null)))

(provide (all-defined-out))
#lang racket
(require "tda-commit.rkt")
(require "tda-commit-list.rkt")

;TDA: ZONA DE TRABAJO
;ESTRUCTURA BASE:
; LISTA DE STRINGS
; (STRING, STRING, STRING...))

;PERTENENCIA:

(define command_list? (lambda (K)
                        (if (null? K)
                            #t
                            (if (string? (car K))
                                (command_list? (cdr K))
                                #f))))

;SELECTORES:

;MOSTRAR ULTIMO COMANDO:

(define show_last_command (lambda (K) (car K)))

;MODIFICADORES:

;AGREGAR NUEVO COMANDO:

(define add_command_to_list (lambda (M K) (cons M K)))

(provide (all-defined-out))
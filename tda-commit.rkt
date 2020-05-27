#lang racket
;TDA: COMMIT
;ESTRUCTURA BASE:
;  NOMBRE, FECHA, CREADOR, ARCHIVO.
; (STRING, STRING, STRING, STRING.)

;CONSTRUCTORES:

(define create_commit (lambda (C D N F) (list C D N F)))

;PERTENENCIA:

(define commit? (lambda (C)
                  (if (and
                       (string? (car C))
                       (string? (cadr C))
                       (string? (caddr C))
                       (string? (cadddr C))
                       (null? (cddddr C)))
                      #t
                      #f)))

;SELECTORES:

;SELECCIONAR CREADOR DEL COMMIT:
(define get_commit_creator (lambda (C) (car C)))

;SELECCIONAR FECHA DEL COMMIT:
(define get_commit_date (lambda (C) (cadr C)))

;SELECCIONAR NOMBRE DEL ARCHIVO:
(define get_commit_filename (lambda (C) (caddr C)))

;SELECCIONAR CONTENIDO DEL ARCHIVO:
(define get_commit_file (lambda (C) (cadddr C)))

(provide (all-defined-out))
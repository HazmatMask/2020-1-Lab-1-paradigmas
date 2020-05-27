#lang racket
(require "tda-commit.rkt")
(require "tda-commit-list.rkt")
(require "tda-zone.rkt")
(require "tda-command-list.rkt")
;TDA: ZONA DE TRABAJO
;ESTRUCTURA BASE:
; LISTA-DE-COMANDOS WORKSPACE  INDEX  LOCAL-REP. REMOTE-REP)
; ((STRING, STRING...) ZONA    ZONA    ZONA       ZONA)      

;PERTENENCIA:

(define zone_list? (lambda (Z)
                  (if (and (command_list? (car Z)) (zone? (cadr Z)) (zone? (caddr Z)) (zone? (cadddr Z)) (zone? (cadddr (cdr Z))) (null? (cadddr (cddr Z))))
                      #t
                      #f)))

;SELECTORES:

;SELECCIONAR LISTA DE COMANDOS:

(define get_command_list (lambda (Q) (car Q)))

;SELECCIONAR ZONA DE WORKSPACE:

(define get_workspace (lambda (Q) (cadr Q)))

;SELECCIONAR ZONA DE INDEX:

(define get_index (lambda (Q) (caddr Q)))

;SELECCIONAR ZONA DE LOCAL-REPOSITORY:

(define get_local_repository (lambda (Q) (cadddr Q)))

;SELECCIONAR ZONA DE REMOTE-REPOSITORY:

(define get_remote_repository (lambda (Q) (cadddr (cdr Q))))

;MODIFICADORES:

;MOVER LISTA DE COMMITS:

(define move_commit_list (lambda (Z1 Z2)
                           (if (equal? ))))

;BORRAR LISTA DE COMMITS POR NOMBRE:

(define delete-zone (lambda (N Z) (list N null)))

(provide (all-defined-out))
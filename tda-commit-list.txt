#lang racket
(require "tda-commit.rkt")
;TDA: LISTA DE COMMIT
;ESTRUCTURA BASE:
; LISTA DE COMMITS
; (COMMIT, COMMIT, COMMIT...)

;PERTENENCIA:

(define commit_list? (lambda (L)
                  (if (commit? car L)
                      (if (null? cdr L)
                          #t
                          (commit_list? (cdr L)))
                      #f)))

;SELECTORES:

;TRAER COMMIT POR CREADOR:

(define find_commit_by_creator (lambda (C L)                       
                              (if (null? L)
                                  L
                                  (if (equal? C (get_commit_creator (car L)))
                                      (cons (car L) (find_commit_by_creator C (cdr L)))
                                      (find_commit_by_creator C (cdr L))))))

;TRAER COMMIT POR FECHA:

(define find_commit_by_date (lambda (D L)                       
                              (if (null? L)
                                  L
                                  (if (equal? D (get_commit_date (car L)))
                                      (cons (car L) (find_commit_by_date D (cdr L)))
                                      (find_commit_by_date D (cdr L))))))

;TRAER COMMIT POR NOMBRE DE ARCHIVO:

(define find_commit_by_filename (lambda (N L)                       
                              (if (null? L)
                                  L
                                  (if (equal? N (get_commit_filename (car L)))
                                      (cons (car L) (find_commit_by_filename N (cdr L)))
                                      (find_commit_by_filename N (cdr L))))))


;MODIFICADORES:

;AGREGAR COMMIT A LISTA:

(define add_commit (lambda (C L) (cons C L)))

;ELIMINAR COMMIT DE LISTA:

(define delete_commit (lambda (C L)
                        (if (null? L)
                            L
                            (if (equal? C (car L))
                                (cdr L)
                                (cons (car L) (delete_commit C (cdr L)))))))

(provide (all-defined-out))
#!/bin/clisp

;3d Definiti o functie care sorteaza fara pastrarea dublurilor o lista liniara.

;sortarea prin insertie; dacă elementul este egal cu elementul curent inserez

;inserează elementul el acolo unde îi este locul
(defun insert(l el)
	(cond
		((null l) (list el))	;lista vida => element la final
		((< (car l) el)
			(cons (car l) (insert (cdr l) el))   ;cât timp elementul e mai mare decât curent
		)
		((= (car l) el) l)	;se ignoră dublura și se oprește programul
		(t (cons el l))		;se inserează elementul și se oprește programul
	)
)

;(print
;	(insert '(1 4 5) 5)
;)

;c - colectoare
;l - lista inițială
(defun sort-o(l c)
	(cond
		((null l) c)	;la final returnez colectoarea
		(t (sort-o (cdr l) (insert c (car l)))) ;insertie
	)
)

;wrapper
(defun my-sort(l)
	(sort-o l nil)
)

(print
(my-sort '(5 5 4 3 3 3 2 1))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

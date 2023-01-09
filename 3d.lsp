#!/bin/clisp

;3d Sa se scrie o functie care intoarce intersectia a doua multimi.

;functie care verifică dacă un element aparține sau nu unei mulțimi
;l lista
;el elementul
;is-in = 1 dacă elementul apartine
;is-in = 0 altfel
(defun is-in(l el)
	(cond
		((null l) 0)
		((= el (car l)) 1)
		(t (is-in (cdr l) el))
	)
)

;(print
;	(is-in '(1 2 3 4) 0)
;)

;c colectoare
(defun int-o(a b c)
	(cond
		((null a) c) ;;returnez colectoarea
		(
			(= (is-in b (car a)) 1)	;dacă elementul din a este și în b
			(cons (car a) (int-o (cdr a) b c))
		)
		(t (int-o (cdr a) b c))		;altfel merg mai departe
	)
)

;wrapper
(defun int(a b)
	(int-o a b nil)
)

(print
	(int
	'(1 2 3 4 5 6)
	'(2 4 6)
	)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

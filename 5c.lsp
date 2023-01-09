#!/bin/clisp

;5c Definiti o functie care determina suma a doua
;numere in reprezentare de lista si calculeaza numarul zecimal corespunzator sumei.

(defun my-reverse(a)
	(cond
	((null a) nil)
	(t
		(append (my-reverse (cdr a)) (list (car a)))
	)
	)
)

;(print
;	(reverse '(1 2 3))
;)

;suma pe a și b inversate
(defun sum(a b tr)
	(cond
		(
			(and
				(null a)
				(null b)
				(= tr 0)
			)
		nil)
		(
			(and
				(null a)
				(null b)
			)
		(list tr))
		((null a)
			(cons
				(mod
					(+ tr
						(+ 0 (car b))
					)
					10
				)
				(sum () (cdr b) (floor (+ tr (+ 0 (car b))) 10))
			)
		)
		((null b)
			(cons
				(mod
					(+ tr
						(+ 0 (car a))
					)
					10
				)
				(sum () (cdr a) (floor (+ tr (+ 0 (car a))) 10))
			)
		)
		(t
			(cons
				(mod
					(+ tr
						(+ (car a) (car b))
					)
					10
				)
				(sum (cdr a) (cdr b) (floor (+ tr (+ (car a) (car b))) 10))
			)
		)
	)
)

;list to number (reversed list)
(defun lton(l)
	(cond
		((null l) 0)
		(t
			(+ (*(lton (cdr l)) 10) (car l))
		)
	)
)

;wrapper
(defun my-sum(a b)
	(lton (sum (my-reverse a) (my-reverse b) 0))
)

(print
	(my-sum
		'(4)
		'(9 9 9)
	)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#!/bin/clisp

;2a. Definiti o functie care selecteaza al n-lea element al unei liste, sau NIL, daca nu exista.

(defun n-th(l n)
	(cond
		((null l) nil)
		((= n 1) (car l))
		(t (n-th (cdr l) (- n 1)))
	)
)

(print (n-th '(1 2 3 4 5 6) 3))
(print (n-th '(1 2 3 4 5 6) 10))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

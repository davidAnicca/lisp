#!/bin/clisp

;1d Sa se scrie o functie care determina numarul de aparitii ale unui atom dat intr-o lista neliniara.

(defun ap(l at)
	(cond
		((null l) 0)
		((equal (car l) at) (+ 1 (ap (cdr l) at)))
		((atom (car l)) (ap (cdr l) at))
		((listp (car l)) (+ (ap (car l) at) (ap (cdr l) at)))
	)
)

(print (ap '(a b c (d e (a a)) a a a) 'a))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#!/bin/clisp
;4b Definiti o functie care obtine dintr-o lista data lista tuturor atomilor care apar,
; pe orice nivel, dar in aceeasi ordine. De exemplu:
;(((A B) C) (D E)) --> (A B C D E)

(defun atomi(l)
	(cond
		((null l) nil)
		((atom (car l))
			(cons (car l) (atomi (cdr l)))
		)
		((listp (car l))
			(append (atomi (car l)) (atomi (cdr l)))
		)
	)
)

(print
	(atomi '(((A B) C) (D E)))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#!/bin/clisp

;1.b.Definiti o functie care obtine dintr-o lista data lista tuturor atomilor care apar, pe orice nivel, dar in ordine inversa.
;De exemplu: (((A B) C) (D E)) --> (E D C B A)

(defun atomi(l)
	(cond
		((null l) nil)
		((atom (car l)) (append (atomi (cdr l)) (list (car l))))
		((listp (car l)) (append (atomi (cdr l)) (atomi (car l))))
	)
)

(print (atomi '(((A B) C) (D E))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

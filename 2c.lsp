#!/bin/clisp

;2c. Sa se construiasca lista tuturor sublistelor unei liste.
;Prin sublista se intelege fie lista insasi, fie un element de pe orice nivel, care este lista.
;Exemplu: (1 2 (3 (4 5) (6 7)) 8 (9 10)) =>
;( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) ).

(defun lista(l)
	(cond
		((null l) nil)
		((listp (car l))
			(cons (car l)
				(append (lista (car l))
					(lista (cdr l))
				)
			)
		)
		(t (lista (cdr l)))
	)
)

;wrapper - adaugă și lista mare

(defun lista-subliste(l)
	(cons l (lista l))
)


(print
(lista-subliste '(1 2 (3 (4 5) (6 7)) 8 (9 10)))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

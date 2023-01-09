#!/bin/clisp
;4d Sa se construiasca o functie care
;intoarce maximul atomilor numerici dintr-o lista, de la nivelul superficial.

;m-maxim curent
(defun max-o(l m)
	(cond
		((null l) m)
		((and
			(numberp (car l))
			(> (car l) m)
			)
				(max-o (cdr l) (car l))
		)
		(t (max-o (cdr l) m))
	)
)

;wrapper
(defun my-max(l)
	(max-o l 0)
)

(print
	(my-max '(1 2 3 10 4 5))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

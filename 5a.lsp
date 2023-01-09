#!/bin/clisp
;5a Definiti o functie care interclaseaza cu pastrarea dublurilor doua liste liniare sortate.

;c colectoare
(defun inter-o(a b c)
	(cond
		((null a) (append c b))
		((null b) (append c a))
		((< (car a) (car b))
			(inter-o (cdr a) b (append c (list (car a)))

			)
		)
		(t (inter-o
				a
				(cdr b)
				(append c (list (car b)))
			)
		)
	)
)

(defun inter(a b)
	(inter-o a b nil)
)

(print
	(inter '(1 3 5 7) '(2 2 4 6 6 6 20 20 20))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

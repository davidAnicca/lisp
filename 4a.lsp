#!/bin/clisp
;4a Definiti o functie care intoarce suma a doi vectori.

(defun sum(a b)
	(cond
		((null a) nil)
		(t (cons
				(+ (car a) (car b))
				(sum (cdr a) (cdr b))
			)
		)
	)
)

(print
	(sum '(1 2 3) '(1 2 3))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#!/bin/clisp

;3.
;a) Definiti o functie care intoarce produsul a doi vectori.

(defun produs(a b)
	(cond
		((null a) nil)
		(t (cons (* (car a) (car b)) (produs (cdr a) (cdr b))))
	)
)

(print
	(produs '(2 4 6 8 10 12 14 16 18 20) '(10 9 8 7 6 5 4 3 2 1))
)


(print
	'(corect (20 36 48 56 60 60 56 48 36 20))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

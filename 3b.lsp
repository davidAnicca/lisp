#!/bin/clisp

;3b Sa se construiasca o functie care intoarce adancimea unei liste.

(defun adancime(l)
		(cond
		((null l) 0)	;presupun că adâncimea începe de la 1
		;((null l) -1)  dacă adâncimea începe de la 0
		((listp (car l)) (max
						(+ 1 (adancime (car l)))
						(adancime (cdr l))
						)
		)
		(t (adancime (cdr l)))
	)
)

(print
	(adancime '(1 (2 (3 4) 5) 6 (7 8 (9 (10 11 (12 13 (14 15)))) 16)))
)

(print
	(adancime '((((((((((((((1 2) 3) 4) 5) 6) 7) 8) 9) 10) 11) 12) 13) 14) 15))
)

(print
	(adancime '(((((((((((((((1 2) 3) 4) 5) 6) 7) 8) 9) 10) 11) 12) 13) 14) 15)))
)

(print
	(adancime '((((((((((((((((1 2) 3) 4) 5) 6) 7) 8) 9) 10) 11) 12) 13) 14) 15))))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

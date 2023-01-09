#!/bin/clisp

;2d. Sa se scrie o functie care transforma o lista liniara intr-o multime.

(defun in(l a)
	(cond
		((null l) 0)
		((= (car l) a) 1)
		(t (in (cdr l) a))
	)
)

;(print
;(in '(1 2 3 4 5) 10)
;)

;m - mulțime colectoare
(defun ltos-o(l m)
	(cond
		((null l) m)
		((= (in m (car l)) 0)
			(ltos-o (cdr l) (cons (car l) m))
		)
		(t (ltos-o (cdr l) m))
	)
)

;wrapper
(defun ltos(l)
	(ltos-o l nil)
)

(print
	(ltos '(1 1 1 2 2 2 3 3 3 4 55 3 3 3 2 2 1 1 0))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

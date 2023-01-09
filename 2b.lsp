#!/bin/clisp
;2b Sa se construiasca o functie care verifica daca un atom e membru al unei liste nu neaparat liniara.


(defun mem(l at)
	(cond
		((null l) 0)
		((equal (car l) at) 1)
		((listp (car l)) (+
							(mem (car l) at)
							(mem (cdr l) at)
						)
		)
		(t (mem (cdr l) at))
	)
)



;wrapper
(defun membru(l at)
	(cond
		((> (mem l at) 0) (print "DA"))
		(t (print "NU"))
	)
)

(membru '(a b c (d) e ((d))) 'd)
(membru '(a b c (d) e ((d))) 'h)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#!/bin/clisp
;1.
;a) Sa se insereze intr-o lista liniara un atom a dat dupa al 2-lea, al 4-lea, al 6-lea,....element.

(defun insert(l e i)
	(cond
		((null l) nil)
		(
		(= (mod i 2) 0) (cons (car l)
							(cons e
								(insert (cdr l) e (+ i 1))))
		)
		(
		(= (mod i 2) 1) (cons (car l) (insert (cdr l) e (+ i 1)))
		)
	)
)

(print (insert '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15) 111 1))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

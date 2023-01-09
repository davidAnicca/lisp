#!/bin/clisp
;5b   Definiti o functie care substituie un element E
;prin elementele unei liste L1 la toate nivelurile unei liste date L.


;el se înlocuiește cu l1
(defun sub(l el l1)
	(cond
		((null l) nil)
		((equal el (car l))
			(cons l1 (sub (cdr l) el l1))
		)
		((listp (car l))
			(cons
				(sub (car l) el l1) ;;apel pe sublistă
				(sub (cdr l) el l1)
			)
		)
		(t
			(cons (car l) (sub (cdr l) el l1))
		)
	)
)

(print
	(sub '(1 2 4 (3 2) 1 4 3) 3 '(0 0 0))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

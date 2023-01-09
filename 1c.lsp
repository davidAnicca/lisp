#!/bin/clisp

;1c.Definiti o functie care intoarce cel mai mare divizor comun al numerelor dintr-o lista neliniara.

;c - cmmdc căutat
(defun cmmdc-o(a b c)
	(cond

	((and

		(= (mod c a) 0)
		(= (mod c b) 0))

	c)

	(t (cmmdc-o a b (+ c 1)));cautare mai departe

	)
)

;wrapper
(defun cmmdc(a b)
	(cmmdc-o a b b)
)

;(print (cmmdc 3 10))

;c - cmmdc actual - incepe cu 1
(defun cmmdc_l_o(l c)
	(cond
		((null l) c)
		(t (cmmdc_l_o (cdr l)(cmmdc (car l) c)))
	)
)

(defun cmmdc_l(l)
	(cmmdc_l_o l 1)
)

(print (cmmdc_l '(2 4 10 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

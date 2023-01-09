#!/bin/clisp
;Sa se scrie o functie care plecand de la o lista data ca argument,
	;inverseaza numai secventele continue de atomi. Exemplu:
;(a b c (d (e f) g h i)) ==> (c b a (d (f e) i h g))

;functia returneaza secvența de atomi inversată până la prima listă găsită
(defun inv(l)
	(cond
		((null l) nil)
		((atom (car l))
			(append (inv (cdr l)) (list (car l)))
		)
		(t nil)
	)
)

;f - 0 nu sunt in secventa (începe o secvență, se apelează inv)
;f - 1 sunt in secventa (chiar dacă car este un atom, se trece mai departe fără apel inv - se ignoră)
;co colectoarea
(defun secv(l f co)
	(cond
		;la final returnez colectoarea
		((null l) co)
		;începe o secvență. o inversez și o pun în colectoare
		;apel mai departe cu flag 1
		((and
			(atom (car l))
			(= f 0)
			)
				(secv (cdr l) 1 (append co (inv l)))
		)
		;sunt într-o secvență. ignor și trec mai departe
		((atom (car l))
			(secv (cdr l) 1 co)
		)
		;am găsit o sublistă. secvența s-a terminat. schimb flag la 0
		;apelez funcția secv cu flag 0 și pentru sublistă (același efect în interior)
		((listp (car l))
			;merg mai departe cu flag 0
			(secv (cdr l)
				0
				(append co (list
							;apel recursiv pt sublistă
							(secv (car l) 0 nil)
							)
				)
			)
		)
	)
)

(defun secvente-atomi(l)
	(secv l 0 nil)
)

(print
	(secvente-atomi '(a b c (d (e f) g h i))
	)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

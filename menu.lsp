;EL -JTimana


(defun mensaje()
  (print "buenos dias")
) 


(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Ejercicio 1 ")
	(print "   2.   Ejercicio 2 ")
	(print "   3.   Ejercicio 3 ")
	(print "   4.    Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (mensaje))
		(2 (print "hola"))
		(3 (print "mundo"))
	    (otherwise nil)
	)
	(when (eq opcion 4) (print "fin programa")(return))
  )





;EL -JTimana
(load "registrarLibro.lsp")


(defun mensaje()
  (print "buenos dias")
) 


(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1. Registrar Biblioteca ")
	(print "   2. Registrar Libro ")
	(print "   3. Buscar Biblioteca ")
	(print "   4. Buscar Libro ")
	(print "   5. Consultar Libro ")
	(print "   6. Consultar Libro ")
	(print "   7. Salir ")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (mensaje))
		(2 (registrarLibro))
		(3 (print "mundo"))
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )





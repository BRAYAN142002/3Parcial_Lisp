;BMajin-JRuano
(load "estructuras.lsp")
(load "registrar-Biblioteca.lsp")
(load "registrarLibro.lsp")
(load "buscarBibliotecaNit.lsp")
(load "buscarBibliotecaEspecifica.lsp")
(load "buscarLibrosCategoria.lsp")
(crear)


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
	(print "   5. Consultar Libro categoria ")
	(print "   6. Salir ")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (registrarBiblioteca))
		(2 (registrarLibro))
		(3 (buscarBibliotecaNit))
		(4 (buscarBibliotecaEspecifica))
		(5 (librosCategoria))
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )





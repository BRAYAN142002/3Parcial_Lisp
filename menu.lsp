;BMajin-JRuano
(load "estructuras.lsp")
(load "0registrarBiblioteca.lsp")
(load "1registrarLibro.lsp")
(load "2buscarBibliotecaNit.lsp")
(load "3buscarLibroEnBiblioteca.lsp")
(load "4buscarLibrosCategoria.lsp")
(load "servicio.lsp")

(crear)

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
	(setq opcion (ingresarNumero))

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



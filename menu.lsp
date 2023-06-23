;BMajin-JRuano
(load "estructuras.lsp")
(load "1registrarBiblioteca.lsp")
(load "2registrarLibro.lsp")
(load "3buscarBibliotecaNit.lsp")
(load "4buscarLibroEnBiblioteca.lsp")
(load "5buscarLibrosCategoria.lsp")
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
	(print "   5. Consultar Libro por categoria Aventura")
	(print "   6. Salir ")
	(format t" ~%")
	(print "   Digite la opcion:")
	(setq opcion (ingresarNumero))

  	(case opcion
		(1 (registrarBiblioteca))
		(2 (registrarLibro))
		(3 (buscarBibliotecaNit))
		(4 (buscarLibroEnBiblioteca))
		(5 (librosCategoria))
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )



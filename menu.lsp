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
	(print "   4. Buscar Libro en Biblioteca ")
	(print "   5. Consultar Libro por categoria Aventura")
	(print "   6. Salir ")
	(format t" ~%")
	(print "   Digite la opcion:")
	(setq opcion (ingresarNumero))
	(if (and (> opcion 0)(< opcion 7))

		(progn
			(case opcion
				(1 (registrarBiblioteca))
				(2 (registrarLibro))
				(3 (buscarBibliotecaNit))
				(4 (buscarLibroEnBiblioteca))
				(5 (librosCategoria))
				(otherwise nil)
			)
		)
		(progn
			(print "Opcion incorrecta,Vuelva a intentarlo...")
			(print "Presiones enter para continuar...")
			(read-char)
		)
		
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )



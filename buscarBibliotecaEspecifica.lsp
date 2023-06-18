(defun buscarBibliotecaEspecifica()
    (print " ===========================================")
	(print " |         Buscar Biblioteca y Libro         |")
	(print " ===========================================") 

    (print "Digite el nit de la biblioteca:  ")
    (setq auxNit (read))

    (setq contadorBibliotecas 0)
    (print "xxxxxxxxxxxxxxx")
    (loop 
        (setq auxBiblioteca (aref v_bibliotecas contadorBibliotecas))
          (print "LLLLLLLLLLLLLL")
        (if (eq (Biblioteca-nit auxBiblioteca) auxNit )
                (progn 
                    (format t "Nit ~D:~%"(Biblioteca-nit auxBiblioteca)) 
                    (format t "Nombre ~S:~%"(Biblioteca-nombre auxBiblioteca))
                    (format t "Direccion ~S:~%"(Biblioteca-direccion auxBiblioteca))
                    ;para buscar un libro en especifico
                    (print "-------------Libro---------------")
                    (print "Digite el Codigo del libro: ")
                    (setq auxCodigo(read))
                    (setq contadorLibro 0)
                    (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro))
                    (loop
                        (if (eq (Libro-codigo auxLibro)auxCodigo )
                            (progn
                                (format t "Codigo ~D:~%"(Libro-codigo auxLibro))
                                (format t "Titulo ~S:~%"(Libro-titulo auxLibro))
                                (format t "Categoria ~S:~%"(Libro-categoria auxLibro))
                                
                            ) 
                        )
                     (setq contadorLibro (+ contadorLibro 1))  
                     (when (>= contadorLibro longitudLibros)(return))
                     (setq auxLibro (aref v_libros contadorLibro))
                    )
                )
                (print "La biblioteca no existe")
               
        )


        (setq contadorBibliotecas (+ contadorBibliotecas 1))
        (when (> contadorBibliotecas 1) 
            (return)
        )
    )
)
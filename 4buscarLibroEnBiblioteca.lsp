;esta funcion se encarga de buscar una biblioteca especifica  y un libro en especifico
;el Usuario debera ingresa el nit de la biblioteca y el codigo del libro
(defun buscarLibroEnBiblioteca()
    ;verifica si el array de bibliotecas no este vacio
    (if (eq (aref v_bibliotecas 0) 0)
        (progn
            (print "No hay bibliotecas registradas.")
            (print "Presiones enter para continuar...")
            (read-char)
        )
        (progn
            (print " ===========================================")
            (print " |       Buscar Biblioteca y Libro         |")
            (print " ===========================================") 

            (print "Digite el nit de la biblioteca:  ")
            (setq auxNit (read))
            (setq bandera 0) ;Bandera para validar si las bibliotecas existen
            (setq bandera1 0);bandera para validar si los libros existen
            (setq contadorBibliotecas 0);iterador para el numero de biblioteca
            (loop 
                (setq auxBiblioteca (aref v_bibliotecas contadorBibliotecas));obtiene la biblioteca en la posicion contadorBiblioteca
                (if (= (Biblioteca-nit auxBiblioteca) auxNit );compara el nit de la biblioteca con el auxNit ingresado
                        (progn 
                            (format t "Nit: ~D ~%"(Biblioteca-nit auxBiblioteca)) 
                            (format t "Nombre: ~S ~%"(Biblioteca-nombre auxBiblioteca))
                            (format t "Direccion: ~S ~%"(Biblioteca-direccion auxBiblioteca))
                            (if (eq (aref (Biblioteca-v_libros auxBiblioteca) 0) 0);verifica el array si esta lleno 
                                (progn
                                    (print "No hay libros registrados.")
                                    (print "Presiones enter para continuar...")
                                    (read-char)
                                )
                                (progn
                                    ;para buscar un libro en especifico
                                    (print "-------------Libro---------------")
                                    (print "Digite el Codigo del libro: ")
                                    (setq auxCodigo(read))
                                    (setq contadorLibro 0)
                                    (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro));obtiene el libro en la posicion del contadorLibro
                                    (loop
                                    ;verificamos si el codigo del libro corresponde con auxCodigo digitado por teclado
                                        (if (= (Libro-codigo auxLibro)auxCodigo )
                                            (progn
                                                (format t "Codigo: ~D ~%"(Libro-codigo auxLibro))
                                                (format t "Titulo: ~S ~%"(Libro-titulo auxLibro))
                                                (format t "Categoria: ~S ~%"(Libro-categoria auxLibro))
                                                
                                            ) 
                                            (setq bandera1 (+ bandera1 1))
                                        )
                                       
                                        (setq contadorLibro (+ contadorLibro 1))  
                                        (when (> contadorLibro 2)(return))
                                        (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro))
                                    )
                                )
                            )
                        )
                        (setq bandera (1+ bandera))
                    
                )


                (setq contadorBibliotecas (+ contadorBibliotecas 1))
                (when (> contadorBibliotecas 1) 
                    (return)
                )
            )
            (if(eq bandera1 3)
                (print "El Libro no existe.")
                
            )

            (if(eq bandera 2)
                (print "La Biblioteca no existe.")
            )
            (print "Presiones enter para continuar...")
            (read-char)  
        )
    )
)
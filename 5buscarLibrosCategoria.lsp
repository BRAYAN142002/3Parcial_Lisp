;Esta funcion se encarga de consultar el numero de libros que son de
;la categoria de AVENTURA para una biblioteca especifica.
;se le ingresara el nit de la biblioteca
(defun librosCategoria()
    ;verificamos que el vector no este vacio
    (if (eq (aref v_bibliotecas 0) 0)
        (progn
            (print "No hay bibliotecas registradas.")
            (print "Presiones enter para continuar...")
            (read-char)
        )
        (progn
            (print " ===========================================")
            (print " |    Libros De Categoria: AVENTURA        |")
            (print " ===========================================")  
            
            (print "Digite el nit de la biblioteca: ")
            (setq nit(read))
        
            (setq contadorBiblioteca 0);iterador para ir avanzando las bibliotecas
            (setq contadorLibro 0);iterador para ir avanzand en el libto
            (setq numLibros 0);contador para los libros de categoria aventura
            (loop 
                (setq auxBiblioteca (aref v_bibliotecas contadorBiblioteca));obtiene la biblioteca en la posicion contadorBiblioteca
                (if (= (Biblioteca-nit auxBiblioteca) nit);compara el nit de la biblioteca con el nit ingresado
                    (progn
                        (if (eq (aref (Biblioteca-v_libros auxBiblioteca) 0) 0);verificamos que el vector de libros tenga informacion
                            (progn
                                (print "No hay libros registrados.")
                                (print "Presiones enter para continuar...")
                                (read-char)
                            )
                            (progn
                                (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro));obtiene el libro en la posicion del contadorLibro
                                (loop                 
                                    (if(eq (Libro-categoria auxLibro) 'AVENTURA)   
                                        (setq numLibros (1+ numLibros) )  
                                    )
                                    (setq contadorLibro (+ contadorLibro 1))    
                                    (when (> contadorLibro 2)(return))
                                    (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro))
                                )
                            )
                        )
                    )   
                )
                (setq contadorBiblioteca (+ contadorBiblioteca 1))
                (when (>= contadorBiblioteca longitudBibliotecas) 
                    (return)
                )
            )
            (print "----------Numero de libros---------")
            (format t" ~%") 
            (format t "El Numero de libros de AVENTURA ")
            (format t "son:~D ~%"numLibros)
            (print "Presiones enter para continuar...")
            (read-char)
        )
    )
)

   

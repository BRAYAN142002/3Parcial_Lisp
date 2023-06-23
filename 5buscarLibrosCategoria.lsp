;Esta funcion se encarga de consultar el numero de libros que son de
;la categoria de AVENTURA pra una biblioteca especifica.
;se le ingresara el nit de la biblioteca
(defun librosCategoria()
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
        
            (setq contadorBiblioteca 0)
            (setq contadorLibro 0)
            (setq numLibros 0)
            (loop 
                (setq auxBiblioteca (aref v_bibliotecas contadorBiblioteca))
                (if (eq (Biblioteca-nit auxBiblioteca) nit)
                    (progn
                        (if (eq (aref (Biblioteca-v_libros auxBiblioteca) 0) 0)
                            (progn
                                (print "No hay libros registrados.")
                                (print "Presiones enter para continuar...")
                                (read-char)
                            )
                            (progn
                                (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro))
                                (loop                 
                                    (if(eq (Libro-categoria auxLibro) 'AVENTURA)   
                                        (setq numLibros (1+ numLibros) )  
                                    )
                                    (setq contadorLibro (+ contadorLibro 1))    
                                    (when (>= contadorLibro longitudLibros)(return))
                                    (setq auxLibro (aref v_libros contadorLibro))
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
        )
    )
)

   

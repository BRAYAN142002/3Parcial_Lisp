;Esta funcion se encarga de consultar el numero de libros que son de
;la categoria de AVENTURA pra una biblioteca especifica.
;se le ingresara el nit de la biblioteca
(defun librosCategoria()
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
        (setq contadorBiblioteca (+ contadorBiblioteca 1))
        (when (>= contadorBiblioteca longitudBibliotecas) 
            (return)
        )
    )
    (print "----------Numero de libros---------")
    (format t" ~%") 
    (format t "El Numero de libros de ~S "auxCategoria)
    (format t "son:~D ~%"numLibros)
)

   

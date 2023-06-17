(defun buscarBibliotecaEspecifica()
    (print " ===========================================")
	(print " |         Buscar Biblioteca y Libro         |")
	(print " ===========================================") 
    (setq  auxBiblioteca(make-Biblioteca))

    (print "Digite el nit de la biblioteca:  ")
    (setq auxNit (read))

    (setq contador 0)
    (loop 
     
        (if(eq v_Bibliotecas-nit auxBibliotecas)
                (progn 
                    (print "Digite el Codigo del libro: ")
                    (setq auxCodigo(read))
                    (loop
                         (if (eq )
                         
                          )
                    )
                )
                (print "La biblioteca no existe")
               
        )


     (setq contador (+ contador 1))
     (when (> contador 2)(return))
    )

 


)
(defun registrarLibro ()
    (print " ===========================================")
	(print " |             Registro libro              |")
	(print " ===========================================") 
    (print "           Bibliotecas registradas          ")  
    (setq contador 0)
    (loop 
        (format t "~%===========================================~%")
        (setq auxBiblioteca (aref v_bibliotecas contador))
        (format t "Nit ~D:~%"(Biblioteca-nit auxBiblioteca)) 
        (format t "Nombre ~S:~%"(Biblioteca-nombre auxBiblioteca))
        (format t "Direccion ~S:~%"(Biblioteca-direccion auxBiblioteca))
        (setq contador (+ contador 1))
        (when (> contador 1)
            (return)
        ) 
    )
    (format t "===========================================~%")
    (setq contadorLibro 0)
    (loop 
        (setq contadorBiblioteca 0)
        (print "Digite el Nit de la biblioteca: ")
        (setq nit (read))
        (loop 
            (setq auxBiblioteca (aref v_bibliotecas contadorBiblioteca))  
            (if ( eq(Biblioteca-nit auxBiblioteca) nit)
                (progn
                    (print "Digite el codigo del libro: ")
                    (setf (((aref Biblioteca-v_libros 0)) auxBiblioteca) (read) )              
                )
                (print "La biblioteca no existe")
            )  
            (setq contadorBiblioteca (+ contadorBiblioteca 1))                     
            (when (> contadorBiblioteca 1)
                (return)
            )
        )  
        (print "Desea registrar otro libro? (s/n)")
        (setq respuesta (read))
        (if (eq respuesta "n")
            (return)
        )
        (setq contadorLibro (+ contadorLibro 1)) 
        (when (> contadorLibro 2)
            (return)
        )
    )
    
    
)






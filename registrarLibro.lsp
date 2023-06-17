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
    (setq contadorBiblioteca 0)
    (setq bandera 0)
    (print "Digite el Nit de la biblioteca: ")
    (setq nit (read))
    (loop        
        (setq auxBiblioteca (aref v_bibliotecas contadorBiblioteca))
        (if (eq (Biblioteca-nit auxBiblioteca) nit)
            (progn                   
                (loop                                                
                    (setq l (make-Libro))
                    (print "Digite el codigo del libro: ")
                    (setf(Libro-codigo l)(read))
                    (print "Digite el titulo del libro: ")
                    (setf(Libro-titulo l)(read))
                    (print "Digite la categoria del libro: ")
                    (setf(Libro-categoria l)(read))                      

                    (setf (aref v_libros contadorLibro) l)
                    (setq contadorLibro (+ contadorLibro 1))
                    (when (> contadorLibro 2)
                        (return)
                    )
                ) 
                (setf (Biblioteca-v_libros auxBiblioteca) v_libros) 
                (setq bandera 1)
            )            
        ) 
        (setq contadorBiblioteca (+ contadorBiblioteca 1))
        (when (>= contadorBiblioteca longitudBibliotecas)
            (return)
        ) 

    ) 
    (if (eq bandera 0)
        (print "La biblioteca no existe")  
        (print "Libro registrado con exito")
    )

)








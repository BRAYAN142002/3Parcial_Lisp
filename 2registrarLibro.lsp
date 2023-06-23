;Esta funcion se encarga de registrar un vector de libros en una biblioteca
;Libro es una estructura que contiene codigo, titulo y categoria
(defun registrarLibro ()
    ;Validar que existan bibliotecas registradas
    (if (eq (aref v_bibliotecas 0) 0)
        (progn
            (print "No hay bibliotecas registradas.")
            (print "Presiones enter para continuar...")
            (read-char)
        )
        (progn
            (print " ===========================================")
            (print " |             Registro libro              |")
            (print " ===========================================") 
            (print "           Bibliotecas registradas          ")             
            (setq contador 0) ;contador para recorrer el vector de bibliotecas
            (loop 
                (format t "~%===========================================~%")
                (setq auxBiblioteca (aref v_bibliotecas contador));se obtiene la biblioteca en la posicion contador
                (format t "Nit: ~D~%"(Biblioteca-nit auxBiblioteca)) 
                (format t "Nombre: ~S~%"(Biblioteca-nombre auxBiblioteca))
                (format t "Direccion: ~S~%"(Biblioteca-direccion auxBiblioteca))
                (setq contador (+ contador 1))
                (when (>= contador longitudBibliotecas)
                    (return)
                ) 
            )
            (format t "===========================================~%")

            (setq contadorLibro 0)
            (setq contadorBiblioteca 0);
            (setq bandera 0)
            (print "Digite el Nit de la biblioteca: ")
            (setq nit (ingresarNumero))
            (setq auxBiblioteca (make-Biblioteca))
        
            (loop 

                (setq v_libros (make-array 3))
                (setq auxBiblioteca (aref v_bibliotecas contadorBiblioteca));obtiene la biblioteca en la posicion contadorBiblioteca
                (if (= (Biblioteca-nit auxBiblioteca) nit);compara el nit de la biblioteca con el nit ingresado
                    (progn
                        (if (eq (aref (Biblioteca-v_libros auxBiblioteca) 0) 0);verifica si el vector de libros esta vacio
                            (progn                   
                                (loop 
                                    (format t "************ Libro # ~D ************"(+ contadorLibro 1))                                                
                                    (setq l (make-Libro))
                                    (print "Digite el codigo del libro: ")
                                    (setf(Libro-codigo l)(ingresarNumero))
                                    (print "Digite el titulo del libro: ")
                                    (setf(Libro-titulo l)(read-line))
                                    ;(print "Digite la categoria del libro: ")
                                    (setf(Libro-categoria l)(menuCategoria))                      
                                    
                                    ;se asigna el libro al vector
                                    (setf (aref v_libros contadorLibro) l)
                                    (setq contadorLibro (+ contadorLibro 1))
                                    (when (> contadorLibro 2)
                                        (return)
                                    )
                                ) 
                                (setf (Biblioteca-v_libros auxBiblioteca) v_libros);se asigna el vector de libros a la biblioteca
                                (setq bandera 2)
                            )     
                            (setq bandera 1)       
                        )                
                    )
                )
                (setq contadorBiblioteca (+ contadorBiblioteca 1))
                (when (>= contadorBiblioteca longitudBibliotecas)
                    (return)
                )      
            ) 
            (cond ((= bandera 0)
                (print "La biblioteca no existe."))
            ((= bandera 1)
                (print "La biblioteca ya tiene el limite de libros registrado."))
            ((= bandera 2)
                (print "Libros registrados con exito."))
            )

            (print "Presiones enter para continuar...")
            (read-char)
        )
    )
)








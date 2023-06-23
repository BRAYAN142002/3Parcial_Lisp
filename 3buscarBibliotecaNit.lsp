;Esta funcion se encarga de buscar una biblioteca por su nit
;e imprimir sus datos y los datos de sus libros
(defun buscarBibliotecaNit()
    ;para verificar si tiene bibliotecas registradas
   (if (eq (aref v_bibliotecas 0) 0)
        (progn
            (print "No hay bibliotecas registradas.")
            (print "Presiones enter para continuar...")
            (read-char)
        ) 
        (progn

            (setq contadorBiblioteca 0);iterador de bibliotecas
            (setq bandera 0);bandera para saber si se encontro la biblioteca
            (print "Digite el Codigo de la biblioteca: ")
            (setq nit (ingresarNumero))
            ; (setq auxBiblioteca (make-Biblioteca))
            (loop 
                (setq auxBiblioteca (aref v_bibliotecas contadorBiblioteca));obtiene la biblioteca en la posicion contadorBiblioteca
                (if (= (Biblioteca-nit auxBiblioteca) nit);compara el nit de la biblioteca con el nit ingresado
                    (progn  
                        (print "Datos de la biblioteca ")
                        (format t "~%Nit: ~D~%"(Biblioteca-nit auxBiblioteca)) 
                        (format t "Nombre: ~S~%"(Biblioteca-nombre auxBiblioteca))
                        (format t "Direccion: ~S~%"(Biblioteca-direccion auxBiblioteca))               
                       
                        (if (eq (aref (Biblioteca-v_libros auxBiblioteca) 0) 0);verifica el array si esta lleno 
                            (progn
                                (print "No hay libros registrados.")
                                (print "Presiones enter para continuar...")
                                (read-char)
                            )
                            (progn
                    
                                ;imprimir los libros de la biblioteca
                                (print "Datos de los libros")
                                (setq contadorLibro 0)
                                (setq auxLibro (aref (Biblioteca-v_libros auxBiblioteca) contadorLibro));obtiene el libro en la posicion del contadorLibro
                                (loop 
                                    (format t "~%Codigo: ~D~%"(Libro-codigo auxLibro))
                                    (format t "Titulo: ~S~%"(Libro-titulo auxLibro))
                                    (format t "Categoria: ~S~%"(Libro-categoria auxLibro))
                                    (setq contadorLibro (+ contadorLibro 1))               
                                    (when (>= contadorLibro longitudLibros) 
                                        (return)
                                    )
                                    (setq auxLibro (aref v_libros contadorLibro))
                                )
                                
                            )
                           
                        )
                        (setq bandera 1)        
                    )         
                )        
                (setq contadorBiblioteca (+ contadorBiblioteca 1))
                (when (>= contadorBiblioteca longitudBibliotecas) 
                    (return)
                )
            )
            (if (eq bandera 0)
                (print "No se encontro la biblioteca")
            )
            (print "Presiones enter para continuar...")
            (read-char)
        )
   )   
)
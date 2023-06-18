
(defun registrarBiblioteca()
    (print " ===========================================")
    (print " |           Registro Bibliotrca           |")
    (print " ===========================================") 
 (setq contador 0)
(loop 
    (if (eq (aref v_bibliotecas contador) 0)
        (progn
            (format t "-----------BIBLIOTECA #~D----------%" (+ contador 1))

            (setq b (make-Biblioteca))
            (print "Digite el nit de la biblioteca: ")
            (setf (Biblioteca-nit b)(read))
            (print "digite el nombre de la biblioteca: ")
            (setf (Biblioteca-nombre b)(read))
            (print "Digite la direccion de la biblioteca: ")
            (setf (Biblioteca-direccion b)(read))
            (setf (aref v_Bibliotecas contador) b)
            (print "Deseas registrar otra biblioteca 's'si, 'n'No: ")

            (setq respuesta (read))
            (if (equal respuesta "s")
                    (setq contador 2)
                    (print "saliendo.")
             )
        )
        (if(eq contador 2)
           (print "Lo siento :c, Numero de Bibliotecas lleno")
        )
       
    )
     (setq contador (+ contador 1))
	 (when (> contador 1)(return))
)

)

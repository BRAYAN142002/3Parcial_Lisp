

(defun registrarBiblioteca()
 (setq contador 0)
 ()
(loop 
    (if (eq (aref v_bibliotecas contador) 0)
        (progn
            (format t "-----------BIBLIOTECA #~D----------" (+ contador 1))
            (setq b (make-Biblioteca))
            (print "Digite el nit de la biblioteca: ")
            (setf (Biblioteca-nit b)(read))
            (print "digite el nombre de la biblioteca: ")
            (setf (Biblioteca-nombre b)(read))
            (print "Digite la direccion de la biblioteca: ")
            (setf (Biblioteca-direccion b)(read))
            (setf (aref v_Bibliotecas contador) b)
            (print "Deseas registrar otra biblioteca '1'si, '0'No: ")

            (setq respuesta (read))
            (if (eq respuesta "n")
                    (setq contador 2)
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
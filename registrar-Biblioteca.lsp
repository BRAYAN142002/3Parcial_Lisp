
(defun registrarBiblioteca()
 (setq contador 0)
(setq b (make-Biblioteca))
(loop 
    (if (eq (aref v_bibliotecas contador) 0)
        (progn
           
            (print "Digite el nit de la biblioteca: ")
            (setf (Biblioteca-nit b)(read))
            (print "digite el nombre de la biblioteca: ")
            (setf (Biblioteca-nombre b)(read))
            (print "Digite la direccion de la biblioteca: ")
            (setf (Biblioteca-direccion b)(read))
            (setf (aref v_Bibliotecas contador) b)
        )
        (print "libros completados")
    )
     (setq contador (+ contador 1))
	 (when (> contador 1)(return))
)

)
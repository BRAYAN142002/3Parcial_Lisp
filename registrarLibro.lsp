(defun registrarLibro ()
    (print " ===========================================")
	(print " |             Registro libro              |")
	(print " ===========================================")
    (print "Bibliotecas registradas: ")
    (format t "Nit ~D:~%"(Biblioteca-nit b))
    (format t "Nombre ~S:~%"(Biblioteca-nombre b))
    (print " ===========================================")
    (format t "Nit ~D:~%"(Biblioteca-nit b))
    (format t "Nombre ~S:~%"(Biblioteca-nombre b))

    (print "Digite el Codigo de la biblioteca: ")
    (setq nit (read))
    (if (eq (Biblioteca-nit b) nit)
        (progn
            (print "Digite el codigo del libro: ")
            (setf(Libro-codigo l)(read))
            (print "Digite el titulo del libro: ")
            (setf(Libro-titulo l)(read))
            (print "Digite la categoria del libro: ")
            (setf(Libro-categoria l)(read))
        )
        (print "La biblioteca no existe")
    )
)






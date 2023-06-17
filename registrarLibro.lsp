(defun registrarLibro ()
    (print " ===========================================")
	(print " |             Registro libro              |")
	(print " ===========================================")
    (format t "Codigo Perro ~D:~%"(Biblioteca-nit b))
    (format t "Nombre Perro ~S:~%"(Biblioteca-nombre b))
    (print " ===========================================")
    (format t "Codigo Perro ~D:~%"(Biblioteca-nit b))
    (format t "Nombre Perro ~S:~%"(Biblioteca-nombre b))

    (print "Digite el numero, Escoja entre 0 y 4")

    (print "Digite el codigo del libro: ")
    (setf(Libro-codigo l)(read))
    (print "Digite el titulo del libro: ")
    (setf(Libro-titulo l)(read))
    (print "Digite la categoria del libro: ")
    (setf(Libro-categoria l)(read))
)






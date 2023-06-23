;Esta funcion se encarga de inicializar una estructura biblioteca "(inicializarBiblioteca)"
;y guardarla en un vector de bibliotecas "v_bibliotecas"
;Biblioteca es una estructura que contiene nit, nombre, direccion y un vector de libros
(defun registrarBiblioteca()
    (print " ===========================================")
    (print " |          Registro de Biblioteca         |")
    (print " ===========================================") 
    (print "")
    (setq contador 0)
    (setq bandera 0)
    (loop 
        (format t "************ Biblioteca # ~D ************"(+ contador 1))
        (if (eq (aref v_bibliotecas contador) 0)
            (progn
                (setq b (inicializarBiblioteca))
                (print "Digite el nit de la biblioteca: ")
                (setf (Biblioteca-nit b)(ingresarNumero))
                (print "digite el nombre de la biblioteca: ")
                (setf (Biblioteca-nombre b)(read-line))
                (print "Digite la direccion de la biblioteca: ")
                (setf (Biblioteca-direccion b)(read-line))
                (setf (aref v_Bibliotecas contador) b)
            )
        )
        (setq contador (+ contador 1))
        (when (> contador 1)(return))
    )

    (print "Biblioteca registrada con exito")
    (print "Presiones enter para continuar...")
    (read-char)
)

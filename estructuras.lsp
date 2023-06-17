;crear vector de libros 
(setq v_libros (make-aray 3))

;crear la estructura del libro 
(defstruct Libro
    codigo
    titulo
    categoria
)
;crear estructura de biblioteca
(defstruct Biblioteca
    nit
    nombre
    direccion
)


;crear instancia para  manipular la estrucutura 
(setq l (make-Libro))
;inicilaizacion delvector con ceros
(setq x 0)
(loop
    (setf (aref v_libros x) 0)
     (setq x (1+ x))
     (when (> x 4)(return))
)


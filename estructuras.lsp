;crear vector de libros 
(setq v_libros (make-aray 3))

;crear vector de bibliotecas
(setq v_bibliotecas(make-aray 2))

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

;crear instancia para  manipular la estrucutura de libros
(setq l(make-Libro))

;crear instancia para  manipular la estrucutura  de bibliotecas
(setq b(make-Biblioteca))


;inicilaizacion del vector de libros con ceros
(setq x 0)
(loop
    (setf (aref v_libros x) 0)
     (setq x (1+ x))
     (when (> x 3)(return))
)

;inicilaizacion del vector biblioteca con ceros
(setq k 0)
(loop
    (setf (aref v_libros k) 0)
     (setq k (1+ k))
     (when (> k > 2)(return))
)


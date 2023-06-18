
(defun crear()

;longitud del vector de libros
(setq longitudLibros 3)
;crear vector de libros 
(setq v_libros (make-array longitudLibros))
;crear la estructura del libro 
(defstruct Libro
    codigo
    titulo
    categoria
)
;crear instancia para  manipular la estrucutura de libros
(setq l (make-Libro))
;inicilaizacion del vector de libros con ceros
(setq x 0)
(loop
    (setf (aref v_libros x) 0)
     (setq x (1+ x))
     (when (> x 2)(return))
)


;longitud del vector de bibliotecas
(setq longitudBibliotecas 2)
;crear vector de bibliotecas
(setq v_bibliotecas (make-array longitudBibliotecas))

;crear estructura de biblioteca
(defstruct Biblioteca
    nit
    nombre
    direccion
    v_libros
)
;funcion para crear una instancia de la estructura biblioteca e inicar el vector de libros con ceros
(defun inicializarBiblioteca ()
  (make-Biblioteca :nit nil
                   :nombre nil
                   :direccion nil
                   :v_libros(make-array 3 :initial-element 0)))

;inicilaizacion del vector biblioteca con ceros
(setq k 0)
(loop
    (setf (aref v_Bibliotecas k) 0)
     (setq k (1+ k))
     (when (> k 1)(return))
)

)
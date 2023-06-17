;; Definir una estructura
(defstruct persona nombre edad)

;; Crear un vector y guardar una estructura en él
(setq vector (make-array 3))
(setq p (make-persona :nombre "Juan" :edad 25))
(setf (aref vector 0) p)
(setq p (make-persona :nombre "Juan2" :edad 30))
(setf (aref vector 1) p)

;; Acceder a la estructura en el vector
(setq pertor (aref vector 1))
(print (persona-nombre pertor)) ; Imprime "Juan"
(print (persona-edad pertor)) ; Imprime 25

; Definir la estructura Libro
(defstruct Libro
  codigo
  titulo
  categoria)

; Definir la estructura Biblioteca
(defstruct Biblioteca
  nit
  nombre
  direccion
  v_libros)

; Crear una instancia de Biblioteca
(setq mi-biblioteca (make-Biblioteca))

; Función para ingresar un nuevo libro
(defun ingresar-libro (biblioteca codigo titulo categoria)
  (let ((libro (make-Libro :codigo codigo :titulo titulo :categoria categoria)))
    (loop for i from 0 below (length (Biblioteca-v_libros biblioteca))
          do (if (not (Biblioteca-v_libros biblioteca i))
               (progn
                 (setf (Biblioteca-v_libros biblioteca i) libro)
                 (return)))))
  (print "Nuevo libro ingresado exitosamente."))

; Ejemplo de uso
(ingresar-libro mi-biblioteca "123" "El libro nuevo" "Ficción")
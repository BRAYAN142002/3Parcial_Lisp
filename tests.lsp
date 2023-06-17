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

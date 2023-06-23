;Función para ingresar solo numeros positivos
(defun ingresarNumero()
  (loop
   (setq valor (read))
   (when (and (numberp valor) (> valor 0))
     (return valor))
   (print "Valor invalido. Ingrese un numero positivo:")
  )
)

;Funcion para seleciionar una categoria
(defun menuCategoria()
  (format t"************ Categorias ************  ~%") 
	(print "   1. DRAMA ")
	(print "   2. SUSPENSO ")
	(print "   3. AVENTURA ")
  (format t" ~%")
  (setq contador 0)
  (loop
       (print "Digite la categoria:")	 
       (setq opcion (read))
       (if(and(> opcion 0)(< opcion 4))
            (progn 
              (case opcion
                (1 (setq auxCategoria 'DRAMA))
                (2 (setq auxCategoria 'SUSPENSO))
                (3 (setq auxCategoria 'AVENTURA))
                (otherwise nil)
              )
              (setq contador 1)
            )
            (print "La opcion que elegiste es incorecta. Vuelva a intentarlo")
         )
       (when (eq contador 1)(return auxCategoria))
  )
)


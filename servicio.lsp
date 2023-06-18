;Función para ingresar solo numeros positivos
(defun ingresarNumero()
  (loop
   (setq valor (read))
   (when (and (numberp valor) (> valor 0))
     (return valor))
   (print "Valor invalido. Ingrese un numero positivo:")))





;Funcion para seleciionar una categoria
(defun menuCategoria
  (format t" ~%") 
	(print "   1. DRAMA ")
	(print "   2. SUSPENSO ")
	(print "   3. AVENTURA ")
    (format t" ~%")
    (print "   Digite la opcion:")	 
    (setq opcion (read))
    (case opcion
		(1 (setq auxCategoria "DRAMA"))
		(2 (setq auxCategoria "SUSPENSO"))
		(3 (setq auxCategoria "AVENTURA"))
        (otherwise nil)
	)
)

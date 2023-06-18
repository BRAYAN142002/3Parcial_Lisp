;Función para ingresar solo numeros positivos
(defun ingresarNumero()
  (loop
   (setq valor (read))
   (when (and (numberp valor) (> valor 0))
     (return valor))
   (print "Valor invalido. Ingrese un numero positivo:")))
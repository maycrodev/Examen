Algoritmo BoletaDepagos
	//-------------------VARIABLES.---------------------//
	Definir nombre, cargo, mes Como Caracter
	Definir ci, sueldo, horas_trabajadas, haber_basico, bono_antiguedad, afp, ingresos, egresos, liquido_pagable, dias_trabajados Como Real
	Definir antiguedad Como Entero
	 
	 //----------Ingresamos el valor de cad una de las variables---------//
	Escribir "Generación de Boleta de Pago para Docentes de la Universidad Católica Boliviana"
	Escribir "Ingrese el nombre del docente..."
	Leer nombre
	Escribir "Ingrese el número de CI del docente..."
	Leer ci
	Escribir "Ingrese el cargo del docente..."
	Leer cargo
	Escribir "Ingrese el sueldo del docente..."
	Leer sueldo
	Escribir "Ingrese las horas trabajadas del docente..."
	Leer horas_trabajadas
	Escribir "Ingrese las horas extra trabajadas del docente..."
	Leer horas_extra
	Escribir "Ingrese los dias trabajados del docente..."
	Leer dias_trabajados
	Escribir "Ingrese el mes en que se realiza el pago..."
	Leer mes
	Escribir "Ingrese los años de antigüedad del docente en años..."
	Leer antiguedad
	 
	horas_extra = (horas_trabajadas + horas_extra) - horas_trabajadas
	afp = 2.87//----------2,87%
	haber_basico = sueldo
	 
	Si antiguedad < 2 Entonces //No hay horas extras, por hora se añade hata un 75% del monto diario
		
		horas_extra = sueldo * 75/100
		sueldo = sueldo + horas_extra
		
	Sino Si antiguedad >= 2 | antiguedad < 5 Entonces
			
			bono_antiguedad = haber_basico * 11/100
			horas_extra = horas_extra * 75/100
			sueldo = (sueldo  + bono_antiguedad) * (horas_extra)
			
		Sino si antiguedad >= 8 | antiguedad < 11 Entonces
				
				bono_antiguedad = haber_basico * 18/100
				horas_extra = haber_basico * 75/100
				sueldo = (sueldo + bono_antiguedad) * (horas_extra)
				
			FinSi
		Fin si
	FinSi
	 	
	 
	ingresos = sueldo 
	 
	egresos = afp/100 * 1750
	 
	liquido_pagable = ingresos - egresos	
	 
	Escribir "Nombre del docente: ", nombre
	 
	Escribir "Número de CI: ", ci
	 
	Escribir "Cargo: ", cargo
	 
	Escribir "Haber básico: ", sueldo
	Escribir "Bono de antiguedad: ", bono_antiguedad
	Escribir "Ingresos: ", ingresos
	Escribir "AFP: ", afp "%"
	Escribir "Egresos: ", egresos
	Escribir "Líquido pagable: ", liquido_pagable
	
	
FinAlgoritmo

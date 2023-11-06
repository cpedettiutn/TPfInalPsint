Algoritmo Final_PSeInt_2023
	
	
	//Estructura principal ?		
	Definir a,b,x,pagarDirecto,eleccionJuego,porcentajeDescuento,contador Como Entero		
	Definir totalSinDesc,totalFinal Como Real		
	Definir nombreCliente Como Caracter		
	Dimension productos[10]
	a = 0	
	totalSinDesc = 0		
	x = 0
	contador = 0
	ventas = 0

	Escribir "      ____ ___ _____ _   ___     _______ _   _ ___ ____   ___  ____                               ";
	Escribir "     | __ )_ _| ____| \ | \ \   / / ____| \ | |_ _|  _ \ / _ \/ ___|                      ";
	Escribir "     |  _ \| ||  _| |  \| |\ \ / /|  _| |  \| || || | | | | | \___ \                  ";
	Escribir "     | |_) | || |___| |\  | \ V / | |___| |\  || || |_| | |_| |___) |                 ";
	Escribir "     |____/___|_____|_| \_|  \_/  |_____|_| \_|___|____/ \___/|____/                   ";
	Escribir "                   ";
	Esperar 1 Segundo;
	Borrar Pantalla
	Escribir "      ____ ___ _____ _   ___     _______ _   _ ___ ____   ___  ____                               ";
	Escribir "     | __ )_ _| ____| \ | \ \   / / ____| \ | |_ _|  _ \ / _ \/ ___|                      ";
	Escribir "     |  _ \| ||  _| |  \| |\ \ / /|  _| |  \| || || | | | | | \___ \                  ";
	Escribir "     | |_) | || |___| |\  | \ V / | |___| |\  || || |_| | |_| |___) |   _             ";
	Escribir "     |____/___|_____|_| \_|  \_/  |_____|_| \_|___|____/ \___/|____/   |_|              ";
	Escribir "                   ";
	Esperar 1 Segundo;
	Borrar Pantalla
	Escribir "      ____ ___ _____ _   ___     _______ _   _ ___ ____   ___  ____                               ";
	Escribir "     | __ )_ _| ____| \ | \ \   / / ____| \ | |_ _|  _ \ / _ \/ ___|                      ";
	Escribir "     |  _ \| ||  _| |  \| |\ \ / /|  _| |  \| || || | | | | | \___ \                  ";
	Escribir "     | |_) | || |___| |\  | \ V / | |___| |\  || || |_| | |_| |___) |   _    _         ";
	Escribir "     |____/___|_____|_| \_|  \_/  |_____|_| \_|___|____/ \___/|____/   |_|  |_|             ";
	Escribir "                   ";
	Esperar 1 Segundo;
	Borrar Pantalla
	Escribir "      ____ ___ _____ _   ___     _______ _   _ ___ ____   ___  ____                               ";
	Escribir "     | __ )_ _| ____| \ | \ \   / / ____| \ | |_ _|  _ \ / _ \/ ___|                      ";
	Escribir "     |  _ \| ||  _| |  \| |\ \ / /|  _| |  \| || || | | | | | \___ \                  ";
	Escribir "     | |_) | || |___| |\  | \ V / | |___| |\  || || |_| | |_| |___) |   _    _    _     ";
	Escribir "     |____/___|_____|_| \_|  \_/  |_____|_| \_|___|____/ \___/|____/   |_|  |_|  |_|            ";
	Escribir "                   ";

	ragregarStocks(productos)
	
	Escribir "Por favor ingresa tu nombre"		
	leer nombreCliente	
	Limpiar Pantalla
	//Ciclo mientras para mostrar primer menú ?		
	Mientras a < 2 y a >= 0 Hacer	
		Escribir "Hola ",nombreCliente, " por favor selecciona una opcion: "
		Escribir " "
		Escribir " "
		Escribir "1: Realiza tu pedido"	
		Escribir " "
		Escribir "2: Pagar"
		Escribir " " 
		Escribir "3: Salir"
		leer a	
		Limpiar Pantalla
		si a == 1 Entonces					
			b = 0					
			//Ciclo mientras segundo menú, se activa cuando el usuario ingresa la opción 1 ?
			Mientras b <= 9 y b >= 0 hacer						
				//Este menu es el que tambien permitira realizar control de stock ?
				Escribir " "
				Escribir " "
				Escribir "1:Combo 1 Hamburguesa con papas fritas o ensalada $3500."						
				Escribir "2:Combo 2 Milanesa con papas fritas o ensalada $3800."						
				Escribir "3:Combo 3 Pizza personal de muzzarella $2500."						
				Escribir "4:Combo 4 Picada completa para dos personas $6700."						
				Escribir "5:Combo 5 Ensalada completa $3300"
				Escribir "6:Gaseosa $1600."
				Escribir "7:Cerveza $2200."
				Escribir "8:Batido de frutas $2300."
				Escribir "9:Agua mineral $1500"
				Escribir " "
				Escribir "10: Volver al menu principal"
				leer b		
				Limpiar Pantalla
				
				si(b<10 y productos[b]<=0)
					Escribir "Disculpe, no contamos con stock de ese combo, por favor elija otro"
				SiNo 
					si b<10 Entonces						
						productos[b] <- productos[b] - 1
					FinSi
					Segun b Hacer
						1:
							Escribir "Su pedido es: Hamburguesa con papas fritas o ensalada"
							totalSinDesc = totalSinDesc + 3500	
							contador = contador + 1					
						2:
							Escribir "Su pedido es: Milanesa con papas fritas o ensalada"
							totalSinDesc = totalSinDesc + 3800	
							contador = contador + 1	
						3:
							Escribir "Su pedido es: Milanesa con papas fritas o ensalada"
							totalSinDesc = totalSinDesc + 3800	
							contador = contador + 1	
						4:
							Escribir "Picada completa para dos personas"
							totalSinDesc = totalSinDesc + 6700
							contador = contador + 1	
						5:
							Escribir "Ensalada completa"
							totalSinDesc = totalSinDesc + 3300
							contador = contador + 1	
						6:
							Escribir "Gaseosa"
							totalSinDesc = totalSinDesc + 1600
							contador = contador + 1	
						7:
							Escribir "Cerveza"
							totalSinDesc = totalSinDesc + 2200
							contador = contador + 1	
						8:
							Escribir "batido de frutas"
							totalSinDesc = totalSinDesc + 2300
							contador = contador + 1	
						9:
							Escribir "Agua mineral"
							totalSinDesc = totalSinDesc + 1500
							contador = contador + 1	
							
						De Otro Modo:
							Escribir "Volver al menu principal"
					Fin Segun
					
				FinSi
				
			FinMientras			
		SiNo
			//Opción 2 del primer menú, se muestra medios de pago.
			si a == 2 Entonces                                      
				Escribir nombre,' Te gustaria jugar un juego para ganar un descuento?'
				Escribir " "
				Escribir " "
				Escribir '1:Ver lista de juegos'
				Escribir '2:Pagar directamente'
				Leer pagarDirecto
				Limpiar Pantalla
				si pagarDirecto = 1 Entonces
					Escribir 'Los juegos son: '
					Escribir " "
					Escribir '1: Preguntas y respuestas'
					Escribir '2: Arrojar los dados'
					Escribir '3: Ahorcado'
					Escribir " "
					Escribir "Selecciona la opcion que quieras jugar"
					Leer eleccionJuego
					Limpiar Pantalla
					Segun eleccionJuego Hacer
						1:
							juegoPreguntas(porcentajeDescuento)
							totalFinal <- totalSinDesc * (1 - porcentajeDescuento/100)
						2:
							juegoArrojarLosDados(porcentajeDescuento)
							totalFinal <- totalSinDesc * (1 - porcentajeDescuento/100)
						3:
							juegoElAhorcado(porcentajeDescuento)
							totalFinal <- totalSinDesc * (1 - porcentajeDescuento/100)  
							
						De Otro Modo:
							totalFinal <- totalSinDesc
							Escribir "No selecciono ningun juego, su total es "	,totalSinDesc
					FinSegun
				SiNo
					totalFinal <- totalSinDesc
				FinSi
				Escribir nombre," El total a pagar es: $",totalFinal
				Escribir "Cantidad de combos ",contador
			FinSi
		FinSi				
	FinMientras	
FinAlgoritmo

funcion ragregarStocks(productos Por Referencia) 
	Para i <- 1 Hasta 9 Hacer
		productos[i] <- 10
	FinPara
FinFuncion
	

funcion juegoArrojarLosDados(porcentajeDescuento Por Referencia) 
	Definir opDados,colorDadoElegido,numeroElegido, dado1,dado2,tirarDenuevo Como Entero
	porentajeDescuento <- 0
	tirarDenuevo <- 0
	
	Escribir " _____ ___ ____      _    ____      _     ___  ____ ";
	Escribir "|_   _|_ _|  _ \    / \  |  _ \    | |   / _ \/ ___|";
	Escribir "  | |  | || |_) |  / _ \ | |_) |   | |  | | | \___ \";
	Escribir "  | |  | ||  _ <  / ___ \|  _ <    | |__| |_| |___) |";
	Escribir "  |_| |___|_| \_\/_/ __\_\_|_\_\__ |_____\___/|____/ ";
	Escribir "";
    Escribir " ___     _    ___     _    ___";
	Escribir "|  _ \  / \  |  _ \ / _ \/ ___| ";
	Escribir "| | | |/ _ \ | | | | | | \___ \";
	Escribir "| |_| / ___ \| |_| | |_| |___) |";
	Escribir "|____/_/   \_\____/ \___/|____/ ";
	Escribir "";
	Escribir "";
	
	Escribir 'Eligio el juego de tirar los dados'
	Escribir 'se tiraran 2 dados y cuenta con dos intentos, puede elegir entre acertar color o numero'
	Escribir  'La opción de color cuenta con un descuento del 10%, la opción por numero con un descuento del 25%'
	Escribir 'Ingrese 1 para elegir descuento por color o 2 por numero'
	Leer opDados
	Segun opDados Hacer
		1:
			Escribir 'Eligio la opcion de descuento por color, ingrese 1 para jugar por el blanco o 2 por el negro'
			Leer colorDadoElegido
			dado1 <- Aleatorio(1,2)
			dado2 <- Aleatorio(1,2)
			//poner todo en un repetir
			Si colorDadoElegido <> 1 y colorDadoElegido <> 2 Entonces
				//si selecciono la opcion incorrecta entra en un while hasta que elija una opcion correcta
				//o seleccione algo para salir
				Escribir 'Selecciono una opcion incorrecta'
			SiNo Si colorDadoElegido = dado1 o colorDadoElegido = dado2 Entonces
					Escribir 'Felicidades, acerto el color, gana un descuento del 10%'
					porentajeDescuento <- 10
				SiNo
					Escribir 'No salio el color elegido, tiene otra oportunidad'
					Escribir 'Ingrese 1 si desea tirar los dados de nuevo"
					Leer tirarDenuevo
					si tirarDenuevo = 1 Entonces
						dado1 <- Aleatorio(1,2)
						dado2 <- Aleatorio(1,2)
						Si colorDadoElegido = dado1 o colorDadoElegido = dado2 Entonces
							Escribir 'Felicidades, acerto el color, gana un descuento del 10%'
							porentajeDescuento <- 10
						SiNo
							Escribir 'Lo sentimos, no salio el color elegido'
						FinSi		
					FinSi			
				FinSi
			FinSi
		2:
			Escribir 'Eligio la opcion por numero, ingrese un numero del 1 al 6'
			Leer numeroElegido 
			Si numeroElegido>=1 Y numeroElegido<=6 Entonces
				dado1 <- Aleatorio(1,2)
				dado2 <- Aleatorio(1,2)
				Si numeroElegido=dado1 o numeroElegido=2 Entonces
					Escribir 'Felicidades salio tu numero, ganaste un descuendo del 25%'
					porentajeDescuento <- 25
				Sino
					Escribir 'No salio el numero elegido, tiene otra oportunidad'
					Escribir 'Ingrese 1 si desea tirar los dados de nuevo"
					Leer tirarDenuevo
					si tirarDenuevo = 1 Entonces
						dado1 <- Aleatorio(1,2)
						dado2 <- Aleatorio(1,2)
						Si numeroElegido=dado1 o numeroElegido=2 Entonces
							Escribir 'Felicidades salio tu numero, ganaste un descuendo del 25%'
							porentajeDescuento <- 25
						SiNo
							Escribir 'Lo sentimos, no salio el numero elegido'
						FinSi
					FinSi
				FinSi
			SiNo
				Escribir 'Ingrese un numero valido'
			FinSi
		De Otro Modo:
			Escribir 'Ingreso una opcion incorrecta'
	Fin Segun
FinFuncion

funcion juegoPreguntas(porcentajeDeDescuento Por Referencia)
	Definir pregunta Como Entero; 
	Definir respuesta Como Entero;
	porcentajeDeDescuento <- 0
	
	Escribir "     _ _   _ _____ ____  ___     ____  _____                                  ";
	Escribir "    | | | | | ____/ ___|/ _ \   |  _ \| ____|                    _   ____              ";
	Escribir " _  | | | | |  _|| |  _| | | |  | | | |  _|                     (_) | __  \             ";
	Escribir "| |_| | |_| | |__| |_| | |_| |  | |_| | |___                    | |    / / ";
	Escribir " \___/ \___/|_____\____|\___/ __|____/|_____|                   | |   / /          ";
	Escribir "                                                               / /   | |               ";
	Escribir " ___   ___   _____  ___ _   _ _   _ _____  _     ___         / /__   |_|            " ;
	Escribir "|  _ \|  _ \| ____/ ___| | | | \ | |_   _|/ \  / ___|        \____|  (_)            ";
	Escribir "| |_) | |_) |  _|| |  _| | | |  \| | | | / _ \ \___ \                          ";
	Escribir "|  __/|  _ <| |__| |_| | |_| | |\  | | |/ ___ \ ___) |                          ";
	Escribir "|_|   |_| \_\_____\____|\___/|_| \_| |_/_/   \_\____/                       ";
	Escribir "";
	Escribir "";

	
	pregunta=azar(5);
	
	Escribir pregunta;
	
	Segun pregunta Hacer
		0:
			Escribir "A continuacion se le realizara una pregunta, si su respuesta es correcta usted obtendra un 10% OFF del total de su cuenta";
			
			Escribir "¿Caul es la capital de España?";
			Escribir "1) Valencia.  2) Barcelona  3) Madrid  4) Sevilla.";
			Leer respuesta;
			
			Si respuesta==3 Entonces
				Escribir "CORRECTO!!, Usted gano un 10% 0FF";
				porcentajeDeDescuento <- 10
			SiNo
				Escribir "INCORRECTO...Gracias por intentarlo";
			FinSi
		1:
			Escribir "A continuacion se le realizara una pregunta, si su respuesta es correcta usted obtendra un 10% OFF del total de su cuenta";
			
			Escribir "¿Cual es el valor de PI?";
			Escribir "1) Cero.  2) Infinito  3) No tiene un valor   4) 3,14.";
			Leer respuesta;
			
			Si respuesta==4 Entonces
				Escribir "CORRECTO!!, Usted gano un 10% 0FF";
				porcentajeDeDescuento <- 10
			SiNo
				Escribir "INCORRECTO...Gracias por intentarlo";
			FinSi
		2:
			Escribir "A continuacion se le realizara una pregunta, si su respuesta es correcta usted obtendra un 10% OFF del total de su cuenta";
			
			Escribir "¿Cuál es el océano más grande del mundo?";
			Escribir "1) Oceano Pacifico.  2) Oceano Atlantico.  3) Oceano Indigo.   4) Oceano Artico. ";
			Leer respuesta;
			
			Si respuesta==1 Entonces
				Escribir "CORRECTO!!, Usted gano un 10% 0FF";
				porcentajeDeDescuento <- 10
			SiNo
				Escribir "INCORRECTO...Gracias por intentarlo";
			FinSi
			
		3:
			Escribir "A continuacion se le realizara una pregunta, si su respuesta es correcta usted obtendra un 10% OFF del total de su cuenta";
			
			Escribir "¿Cuál es el pais mas grande del mundo?";
			Escribir "1) Argentina.  2) Rusia.  3) Brasil.   4) EE.UU. ";
			Leer respuesta;
			
			Si respuesta==2 Entonces
				Escribir "CORRECTO!!, Usted gano un 10% 0FF";
				porcentajeDeDescuento <- 10
			SiNo
				Escribir "INCORRECTO...Gracias por intentarlo";
			FinSi
			
		4:
			Escribir "A continuacion se le realizara una pregunta, si su respuesta es correcta usted obtendra un 10% OFF del total de su cuenta";
			
			Escribir "¿Cuál es país más poblado de la Tierra?";
			Escribir "1) Argentina.  2) China.  3) Japon.   4) EE.UU. ";
			Leer respuesta;
			
			Si respuesta==2 Entonces
				Escribir "CORRECTO!!, Usted gano un 10% 0FF";
				porcentajeDeDescuento <- 10
			SiNo
				Escribir "INCORRECTO...Gracias por intentarlo";
			FinSi
			
		5:
			Escribir "A continuacion se le realizara una pregunta, si su respuesta es correcta usted obtendra un 10% OFF del total de su cuenta";
			
			Escribir "¿Cuál es el continente más extenso del planeta?";
			Escribir "1) Europa.  2) America.  3) Asia.   4) Oceania. ";
			Leer respuesta;
			
			Si respuesta==4 Entonces
				Escribir "CORRECTO!!, Usted gano un 10% 0FF";
				porcentajeDeDescuento <- 10
			SiNo
				Escribir "INCORRECTO...Gracias por intentarlo";
			FinSi
	Fin Segun
FinFuncion

Funcion juegoElAhorcado(porcentajeDeDescuento Por Referencia)
	Definir x,n,a,c,error Como Entero
	definir letra,secreta,vector1,vector2 Como Caracter
	porcentajeDeDescuento <- 0
	
	Escribir "      _ _   _ _____ ____  ___    ____  _____ _          ";
	Escribir "     | | | | | ____/ ___|/ _ \  |  _ \| ____| |          ";
	Escribir "  _  | | | | |  _|| |  _| | | | | | | |  _| | |      ";
	Escribir " | |_| | |_| | |__| |_| | |_| | | |_| | |___| |___    ";
	Escribir "  \___/ \___/|_____\____|\___/__|____/|_____|_____|       ";
	Escribir "      _    _   _   _   ___     ___    _    ___     _"   ;
	Escribir "     / \  | | | |/ _ \|  _ \ / ___|  / \  |  _ \ / _ \     ";
	Escribir "    / _ \ | |_| | | | | |_) | |     / _ \ | | | | | | |     ";
	Escribir "   / ___ \|  _  | |_| |  _ <| |___ / ___ \| |_| | |_| |         ";
	Escribir "  /_/   \_\_| |_|\___/|_| \_\\____/_/   \_\____/ \___/           ";
	
	
	generarPalabrasecreta(secreta)
	
	n = Longitud(secreta)
	Dimension vector1[n], vector2[n]
	
	Para x=1 hasta n con paso 1 hacer
		vector1(x) = Subcadena(secreta,x,x)
		vector2(x) = "_"
	FinPara
	
	a = 0
	
	Mientras a < 3 Hacer
		para x = 1 Hasta n Con Paso 1 Hacer
			Escribir  vector2(x) Sin Saltar
		FinPara
		Escribir ""
		Escribir "ingrese una letra"
		leer letra
		error = 1
		Para x = 1 hasta n Con Paso 1 hacer
			si letra == vector1(x) Entonces
				si vector2(x) = "_" Entonces
					vector2(x) = letra
					c = c + 1
					error = 0
				FinSi
			FinSi
		FinPara
		si c == n Entonces
			Escribir "Felicidades has ganado el juego"
			porcentajeDeDescuento <- 40
			a = 4
		SiNo
			si error == 1 Entonces
				a = a + 1
			FinSi
			si a == 1 Entonces
				Escribir "Te quedan 2 intentos"
				
			FinSi
			si a == 2 Entonces
				Escribir "Te queda 1 intento"
			FinSi
			si a == 3 Entonces
				Escribir "HAS PERDIDO EL JUEGO"
			FinSi
		FinSi
	FinMientras
FinFuncion

funcion generarPalabrasecreta(secreta Por Referencia)
	Definir  alea como entero
	Dimension vectorPalabras[5]
	
	vectorPalabras[1] <- 'papa'
	vectorPalabras[2] <- 'batata'
	vectorPalabras[3] <- 'zanahoria'
	vectorPalabras[4] <- 'calabaza'
	vectorPalabras[5] <- 'ravioles'
	
	alea <- Aleatorio(1,5)
	
	secreta <- vectorPalabras[alea]
FinFuncion
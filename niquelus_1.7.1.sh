#!/bin/sh

# Created by: Damián Gallardo
# Un sencillo script para la creación de ficheros y directorios para FreeBSD y derivados (GhostBSD, NomadBSD, etc.)
# Version: 1.7.1

text_file() {

# Crea un solo archivo de texto plano.
# El comando read solo captura la entrada del usuario solo una vez.
echo "Está a punto de crear un archivo de texto plano. Elija un nombre para el archivo: "
read textfile_name

if [ -z "$textfile_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -f "$textfile_name.txt" ]; then
		echo "El archivo $textfile_name ya existe en el sistema, ¿Quieres reemplazarlo? [Y/N]: "
		read cuestion_text

		if [ "$cuestion_text" = "Y" ] || [ "$cuestion_text" = "y" ]; then
			rm "$textfile_name.txt"
			touch "$textfile_name.txt"
			echo -e "\e[33mEl archivo $textfile_name fue reemplazado con éxito.\e[0m"
		elif [ "$cuestion_text" = "N" ] || [ "$cuestion_text" = "n" ]; then
			echo -e "\e[31mEl archivo $textfile_name no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn."
		fi
	else
		touch "$textfile_name.txt"
		sleep 1
		echo "El archivo $textfile_name fue creado con éxito."
	fi
fi

}

check_app() {

# Esta función nos permite verificar si una aplicación está instalada en el sistema o no está instalada.
echo "Ingrese el nombre de la aplicación a buscar: "
read app_name

if [ -z "$app_name" ]; then
    echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else
    if which "$app_name" > /dev/null; then
        echo -e "\e[1;32mLa aplicación $app_name existe en tu sistema.\e[0m"
    else
        echo -e "\e[1;31mLa aplicación no existe en el sistema o fue mal escrita.\e[0m"
    fi
fi
	
}

directories() {

# Esta función nos permite crear un solo directorios con su respectivo nombre.
echo "Ingrese el nombre del directorio a crear $d: "
read directory_name

if [ -z "$directory_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -d "$directory_name" ]; then
		echo "El directorio ya existe en el sistema, ¿Quieres reemplazarlo? [Y/N]: "
		read cuestion_directory

		if [ "$cuestion_directory" = "Y" ] || [ "$cuestion_directory" = "y" ]; then
			rm -r "$directory_name"
			mkdir "$directory_name"
			echo -e "\e[33mEl directorio $directory_name fue creado con éxito.\e[0m"
		elif [ "$cuestion_directory" = "N" ] || [ "$cuestion_directory" = "n" ]; then
			echo -e "\e[31mEl directorio no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn."
		fi
	else
		mkdir "$directory_name"
		sleep 1
		echo -e "\e[33mEl directorio $directory_name fue creado con éxito.\e[0m"
	fi
fi
	
}

create_html() {

# Esta función nos permite crear un solo archivo HTML.
echo "Está a punto de crear un archivo HTML. Elija un nombre para el archivo: "
read html_name

if [ -z "$html_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -f "$html_name.html" ]; then
		echo "El archivo $html_name.html ya existe en el sistema, ¿Quieres reemplazarlo? [Y/N]: "
		read cuestion_html

		if [ "$cuestion_html" = "Y" ] || [ "$cuestion_html" = "y" ]; then
			rm "$html_name.html"
			touch "$html_name.html"
			echo -e "\e[33mEl archivo $html_name.html fue reemplazado con éxito.\e[0m"
		elif [ "$cuestion_html" = "N" ] || [ "$cuestion_html" = "n" ]; then
			echo -e "\e[31mEl archivo no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn."
		fi
	else
		touch "$html_name.html"
		sleep 1
		echo "El archivo $html_name.html fue creado con éxito."
	fi
fi

}

libreoffice_writer() {

# Esta función crea un solo archivo en LibreOffice Writer.
echo "Está a punto de crear un archivo en LibreOffice Writer. Elija un nombre para el archivo: "
read writer_name

if [ -z "$writer_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -f "$writer_name.odt" ]; then
		echo "El archivo $writer_name ya existe en el sistema, ¿Quieres reemplazarlo? [Y/N]: "
		read cuestion_writer

		if [ "$cuestion_writer" = "Y" ] || [ "$cuestion_writer" = "y" ]; then
			rm "$writer_name.odt"
			touch "$writer_name.odt"
			echo -e "\e[33mEl archivo $writer_name fue reemplazado con éxito.\e[0m"
		elif [ "$cuestion_writer" = "N" ] || [ "$cuestion_writer" = "n" ]; then
			echo -e "\e[31mEl archivo $writer_name no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn."
		fi
	else
		touch "$writer_name.odt"
		sleep 1
		echo "El archivo $writer_name fue creado con éxito."
	fi
fi

}

libreoffice_calc() {

# Esta función crea un solo archivo en LibreOffice Calc.
echo "Está a punto de crear un archivo en LibreOffice Calc. Elija un nombre para el archivo: "
read calc_name

if [ -z "$calc_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -f "$calc_name.ods" ]; then
		echo "El archivo $calc_name ya existe en el sistema, ¿Quieres reemplazarlo? [Y/N]: "
		read cuestion_calc

		if [ "$cuestion_calc" = "Y" ] || [ "$cuestion_calc" = "y" ]; then
			rm "$calc_name.ods"
			touch "$calc_name.ods"
			echo -e "\e[33mEl archivo $calc_name fue reemplazado con éxito.\e[0m"
		elif [ "$cuestion_calc" = "N" ] || [ "$cuestion_calc" = "n" ]; then
			echo -e "\e[31mEl archivo $calc_name no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn."
		fi
	else
		touch "$calc_name.ods"
		sleep 1
		echo "El archivo $calc_name fue creado con éxito."
	fi
fi

}

libreoffice_draw() {

# Esta función crea un solo archivo en LibreOffice Draw.
echo "Está a punto de crear un archivo en LibreOffice Draw. Elija un nombre para el archivo: "
read draw_name

if [ -z "$draw_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -f "$draw_name.odg" ]; then
		echo "El archivo $draw_name ya existe en el sistema, ¿Quieres reemplazarlo [Y/N]: " cuestion_draw
		read cuestion_draw

		if [ "$cuestion_draw" = "Y" ] || [ "$cuestion_draw" = "y" ]; then
			rm "$draw_name.odg"
			touch "$draw_name.odg"
			echo -e "\e[33mEl archivo $draw_name fue reemplazado con éxito.\e[0m"
		elif [ "$cuestion_draw" = "N" ] || [ "$cuestion_draw" = "n" ]; then
			echo -e "\e[31mEl archivo $draw_name no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn."
		fi
	else
		touch "$draw_name.odg"
		sleep 1
		echo "El archivo $draw_name fue creado con éxito."
	fi
fi

}

libreoffice_impress() {

# Esta función crea un solo archivo en LibreOffice Impress.
echo "Está a punto de crear un archivo en LibreOffice Impress. Elija un nombre para el archivo: "
read impress_name

if [ -z "$impress_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -e "$impress_name.odp" ]; then
		echo "El archivo $impress_name ya existe en el sistema, ¿Quieres reemplazarlo [Y/N]: " cuestion_impress
		read cuestion_impress
		
		if [ "$cuestion_impress" = "Y" ] || [ "$cuestion_impress" = "y" ]; then
			rm "$impress_name.odp"
			touch "$impress_name.odp"
			echo -e "\e[33mEl archivo $impress_name fue reemplazado con éxito.\e[0m"
		elif [ "$cuestion_impress" = "N" ] || [ "$cuestion_impress" = "n" ]; then
			echo -e "\e[31mEl archivo $impress_name no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn."
		fi
	else
		touch "$impress_name.odp"
		sleep 1
		echo "El archivo $impress_name fue creado con éxito."
	fi
fi

}

css_file() {

# Esta función crea un archivo CSS con un código básico precargado.
echo "Está a punto de crear un archivo CSS. Elija un nombre para el archivo: "
read css_name

if [ -z "$css_name" ]; then
	echo -e "\e[1;31mEl campo de texto está vacío. Vuelve a intentarlo.\e[0m"
else

	if [ -e "$css_name.css" ]; then
		echo "El archivo $css_name ya existe en el sistema, ¿Quieres reemplazarlo [Y/N]: " 
		read cuestion_css

		if [ "$cuestion_css" = "Y" ] || [ "$cuestion_css" = "y" ]; then
			rm "$css_name.css"
			touch "$css_name.css"
			echo -e "\e[33mEl archivo $css_name fue reemplazado con éxito.\e[0m"
		elif [ "$cuestion_css" = "N" ] || [ "$cuestion_css" = "n" ]; then
			echo -e "\e[31mEl archivo $css_name no fue reemplazado.\e[0m"
		else
			echo "Tecla incorrecta, presione entre Yy o Nn"
		fi
	else
		touch "$css_name.css"
		sleep 1
		echo "El archivo $css_name fue creado con éxito."
	fi
fi

}

html_colors() {

# Esta función crea un color HTML de forma aleatoria.
for i in $(jot -r 3 0 255); do printf '%02x' $i; done | sed 's/\(..\)/\1/g; s/^/#/; s/\(..\)/\1/g'

}

random_number() {

# Generar un número aleatorio entre 1 y 1000	
r_number=$(jot -r 1 1 1000)
	
echo -e "\e[1;35mNúmero aleatorio: $r_number\e[0m"
	
}

empty_files() {

# Esta función busca archivos vacíos en el directorio actual y sus subdirectorios.
e_files=$(find . -type f -empty)

	if [ -z "$e_files" ]; then
		echo -e "\e[1;31mERROR: No existen archivos vacíos en este directorio.\e[0m"
	else
		echo "$e_files" | while IFS= read -r g; do
		echo -e "\e[1;32mArchivo encontrado: $g\e[0m"
		done
	fi

# ¿Cómo funciona esta función?

# 1. La variable "e_files" almacenará lo que se va a ejecutar, sin el símbolo del dolar no funciona.
# 2. La condición "if" se encarga de buscar archivos que no estén vacíos gracias a la opción "-z".
# 3. De lo contrario, se llama a la variable "e_files" y, gracias al "pipe" o "tuberia", se pasa todo al bucle "while" donde itera sobre cada archivo vacío encontrado.
# 4. Por último, se imprime un mensaje de color verde, donde mostrará todos los archivos vacíos que existen en ese directorio o sus subdirectorios.
# 5. "g" Es la variable que creamos para el bucle "while".

}

random_font() {

# Generar letras aleatorias para cualquier uso; contraseñas, nombres de usuario, etc.
var_fonts=$(jot -rc 6 A Z | tr '\n' ' ')

echo "Caracteres generados"
echo -e "\e[1;35m$var_fonts\e[0m"
	
}

filter_files() {

# Sencilla función que imprime en pantalla todos los archivos de texto plano, archivos vacíos y directorios.
# Busca archivos y directorios en tu posición actual e imprime los resultados en color azul.
echo "Archivos y directorios encontrados..."
sleep 1
find . -print | awk '{print "\033[1;34m" $0 "\033[0m"}'

echo "Buscando solo archivos de texto plano en tu directorio actual..."
sleep 1
find . -type f -name "*.txt" -print | awk '{print "\033[1;33m" $0 "\033[0m"}'

echo "Buscando solo archivos vacíos en tu directorio actual..."
sleep 1
find . -type f -empty -print | awk '{print "\033[1;31m" $0 "\033[0m"}'

echo -e "\e[1;42mProceso terminado.\e[0m"	
	
}

mv_directory() {

destino="/tmp/archivos_temporales"

# Crear el directorio si no existe.
if [ ! -d "$destino" ]; then
    echo -e "\e[1;32mEl directorio no existe. Creándolo...\e[0m"
    sleep 1
    mkdir -p "$destino"
else
    echo -e "\e[1;31mEl directorio ya existe.\e[0m"
fi

# Solicitar el nombre del archivo a mover.
echo -n "Ingrese la ruta completa del archivo a mover: "
read file_move

# Verificar si el archivo existe.
if [ ! -f "$file_move" ]; then
    echo -e "\e[1;41mEl archivo no existe. Abortando.\e[0m"
    exit 1
fi

# Mover el archivo.
if [ $(id -u) -eq 0 ]; then
	mv "$file_move" "$destino" && echo "Archivo movido con éxito a $destino."
else
	echo -e "\e[1;41mNo se puede mover el archivo. No estás como usuario root.\e[0m"
fi

}

wc_w() {

echo "Escribe el nombre o ruta de dicho archivo: "
read word_count
		
if [ -z "$word_count" ]; then
	echo -e "\e[1;31mNo se permiten espacios vacíos. El script se cerrará.\e[0m"
	exit 1
fi
		
if [ ! -f "$word_count" ]; then
	echo -e "\e[1;31mEl archivo no existe o fue mal escrito.\e[0m"
	exit 1
else
	var=$(wc -w < "$word_count")
	echo -e "\e[1;42mCantidad de textos en $word_count: $var\e[0m"
fi
	
}

small_letters() {

read -p "Escribe tu texto: " s_letters
echo "$s_letters" | tr 'A-Z' 'a-z'

}

capital_letters() {

read -p "Escribe tu texto: " c_letters
echo "$c_letters" | tr 'a-z' 'A-Z' 

}

Buscar_directorios_vacíos() {

	find / -type d -empty 2>/dev/null
	
}

xterm_program() {

	xterm -e top
	
}

empaquetar() {

	# Función para empaquetar archivos y directorios.
	echo "Introduzca el nombre o la ruta del archivo o directorio a empaquetar: "
	read ARCHIVO

	if [ -z "$ARCHIVO" ]; then
		echo "El campo de texto está vacío. Vuelve a intentarlo."
		exit 1
	fi

	# Confirma si existe el archivo o directorio a empaquetar.
	if [ ! -e "$ARCHIVO" ]; then
		echo -e "\e[1;31mEl archivo o directorio no existe.\e[0m"
		exit 1
	fi

	tar -cvf "${ARCHIVO}.tar" "$ARCHIVO"
	echo -e "\e[1;32mEmpaquetado con éxito.\e[0m"

}

guardar_teclas() {

	archivo="teclas_guardadas.txt"

	echo "Escribe algo (escribe 'salir' para terminar):"

	while true
	do
		read entrada

		if [ "$entrada" = "salir" ]; then
			break
		fi

		echo "$entrada" >> "$archivo"
		echo "Guardado."
	done

	echo "El texto fue guardado en $archivo"

}

hour() {

	while true; do
		clear
		date +"%H:%M:%S"
		sleep 1
	done

}

openurl() {

echo "Ingresá una URL (o dejá vacío para abrir el navegador): "
read url

if [ -z "$url" ]; then
    echo -e "\e[1;31mIMPORTANTE: El campo de texto está vacío.\e[0m"
else
    echo "Abriendo $url ..."
    xdg-open "$url" >/dev/null 2>&1 &
fi

}

# Inicia el bucle while.
while true; do

echo -e "\e[1;35mHola $USER\e[0m"
echo -e "\e[1;34mNiquelus, un sencillo script para crear un montón de cosas básicas.\e[0m"
echo "1. Crear un solo archivo de texto plano"
echo "2. Verificar si una aplicación existe"
echo "3. Crear un directorio"
echo "4. Crear un archivo HTML"
echo "5. Crear un archivo de LibreOffice Writer"
echo "6. Crear un archivo de LibreOffice Calc"
echo "7. Crear un archivo de LibreOffice Draw"
echo "8. Crear un archivo de LibreOffice Impress"
echo "9. Crear un archivo CSS"
echo "10. Acerca de Niquelus"
echo -e "\e[1;32m==== OPCIONES EXTRAS ====\e[0m"
echo "11. Generar color HTML aleatorio"
echo "12. Generar número aleatorio"
echo "13. Buscar archivos vacíos en el directorio actual"
echo "14. Generar letras aleatorias"
echo "15. Filtrar archivos de texto plano, archivos vacíos y directorios"
echo "16. Crear un directorio para mover tus archivos en /tmp/"
echo "17. Imprime el número de palabras de cada archivo"
echo "18. Convertir textos en minúsculas"
echo "19. Convertir textos en mayúsculas"
echo "20. Buscar directorios vacíos"
echo "21. Ejecutar Top"
echo "22. Empaquetar archivos y directorios"
echo "23. Guardar teclas"
echo "24. Mostrar hora"
echo "25. Abrir una página web"
echo "26. Salir del programa"
read -p "Selecciona una opción: " options

# =================================> Estructura case

case $options in

    1)
        # Llama a la función "text_file" para ejecutar el código.
        text_file
        ;;
    2)
        # Llama a la función "check_app" para ejecutar el código.
        check_app
        ;;
    3)
        # Llama a la función "directories" para ejecutar el código.
        directories
        ;;
    4)
        # Llama a la función "create_html" y crea un archivo vacío HTML.
        create_html
        ;;
    5)
        # Llama a la función "libreoffice_writer" y crea un archivo en LibreOffice Writer.
        libreoffice_writer
        ;;
    6)
        # Llama a la función "libreoffice_calc" y crea un archivo en LibreOffice Calc.
        libreoffice_calc
        ;;
    7)
        # Llama a la función "libreoffice_draw" y crea un archivo en LibreOffice Draw.
        libreoffice_draw
        ;;
    8)
        # Llama a la función "libreoffice_impress" y crea un archivo en LibreOffice Impress.
        libreoffice_impress
        ;;
    9)
        # Llama a la función "css_file" y crea un archivo .css.
        css_file
        ;;
    10)
        # Información acerca del script.
        echo -e "\e[1;36mCreado por: Damián Gallardo\e[0m"
        echo -e "\e[1;35mVersión: 1.7.1\e[0m"
        ;;
	11)
		# Llama a la función "html_colors" y generará de forma aleatoria un color HTML.
		random_color=$(html_colors)
		echo -e "\e[1;35mTu color generado es: $random_color\e[0m"
		;;
	12)
		# Llama a la función "random_number" para poder generar un número de forma aleatoria.
		random_number
		;;
	13)
		# Llama a la función "empty_files" para buscar archivos vacíos en tu directorio actual y sus subdirectorios.
		empty_files
		;;
	14)
		# Llama a la función "random_font" para generar letras aleatorias.
		random_font
		;;
	15)
		# Llama a la función "filer_files" para buscar archivos vacíos, archivos de texto plano y directorios en tu posición actual.
		filter_files
		;;
	16)
		# Llama a la función "mv_directory" para crear un directorio y mover todos tus archivos allí. La ubicación es en /tmp/archivos_temporales.
		mv_directory
		;;
	17)
		# El número de palabras en cada archivo de entrada se imprime en la salida estándar.
		wc_w
		;;
	18)
		# Llama a la función "small_letters" y convierte todo un texto en letras minúsculas.
		small_letters
		;;
	19)
		# Llama a la función "capital letters" y convierte todo un texto en letras mayúsculas.
		capital_letters
		;;
	20)
		# Llama a la función "Buscar_directorios_vacíos" para poder ver cuantos directorios están vacíos partiendo de la ruta raíz.
		Buscar_directorios_vacíos
		;;
	21)
		# Llama a la función xterm_program para ejecutar el programa 'top'.
		xterm_program
		;;
	22)
		# Llama a la funcion empaquetado para empaquetar archivos y directorios.
		empaquetar
		;;
	23)
		# Llama a la función guardar teclas.
		guardar_teclas
		;;
	24) # Muestra la hora, minutos y segundos.
		hour
		;;
	25) # Llama a la función open_url
		openurl
		;;
    26)
        # Salir del script.
        echo "¡Adiós!"
        exit 0
        ;;
    *)
        echo -e "\e[1;31m¡Ups! Parece que el argumento no es válido. Elija una opción entre 1-26.\e[0m"
        ;;
esac
done

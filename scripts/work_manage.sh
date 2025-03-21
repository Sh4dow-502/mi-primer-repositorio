#!/bin/bash

# Definir el directorio y el archivo de Python de forma fija
DIRECTORY="/home/sh4dow/workspace/python/manage_workspaces" # Cambia esto por tu ruta fija
PYTHON_PROGRAM="main.py"                                    # Cambia esto por el nombre de tu archivo Python

# Acceder al directorio
cd "$DIRECTORY" || {
  echo "Error: No se pudo acceder al directorio $DIRECTORY"
  exit 1
}

# Verificar si el archivo de Python existe
if [ ! -f "$PYTHON_PROGRAM" ]; then
  echo "Error: El archivo $PYTHON_PROGRAM no existe en el directorio $DIRECTORY"
  exit 1
fi

# Abrir Neovim, ejecutar el programa Python en una terminal, maximizar la terminal, ocultar los números de línea y cerrar Neovim cuando la terminal se cierre
nvim -c "term python $PYTHON_PROGRAM" -c "wincmd _" -c "wincmd |" -c "setlocal nonumber norelativenumber" -c "autocmd TermClose * quit" -c "startinsert"

# Comprobar si 'nvim' se ejecutó correctamente
if [ $? -ne 0 ]; then
  echo "Error al abrir nvim o ejecutar el programa Python"
  exit 1
fi

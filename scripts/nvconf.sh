#!/bin/bash

# Ruta del archivo .vimrc en la ruta actual
vimrc="./.nvimrc"

# Líneas que se añadirán
config="
autocmd BufNewFile,BufRead *.html set filetype=htmldjango
autocmd FileType html,htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
"

# Comprobar si el archivo existe, si no, crearlo
if [ ! -f "$vimrc" ]; then
  touch "$vimrc"
  echo "Archivo .nvimrc creado en la ruta actual."
fi

# Comprobar si las líneas ya existen en .vimrc
if grep -q "autocmd BufNewFile,BufRead *.html set filetype=htmldjango" "$vimrc"; then
  echo "La configuración ya existe en $vimrc."
else
  # Añadir las líneas al final de .vimrc
  echo "$config" >>"$vimrc"
  echo "Configuración añadida correctamente a $vimrc."
fi

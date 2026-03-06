#!/bin/bash

# Pequena pausa para garantir que o i3 esteja pronto
sleep 5

# Garante que estamos no Workspace 1
i3-msg "workspace 1"

# Carrega o layout (cria os placeholders vazios)
i3-msg "append_layout /home/claucio/.config/i3/workspace_1.json"

sleep .5

# Lança os apps. 
# O btop e o tty-clock geralmente definem o título da janela automaticamente.
# Para o terminal vazio, forçamos o título com --title.

gnome-terminal --disable-factory --title="btop" -- btop &
gnome-terminal --disable-factory --title="terminal-principal" &
gnome-terminal --disable-factory --title="tty-clock" -- tty-clock -c &

# Espera os terminais "encaixarem" antes de mudar de workspace
sleep 3

# Abre o Chrome no Workspace 2
i3-msg "workspace 2; exec google-chrome"

# Espera o Chrome sinalizar que abriu e volta para o 1
sleep 2
i3-msg "workspace 1"

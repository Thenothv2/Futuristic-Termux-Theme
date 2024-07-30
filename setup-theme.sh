#!/bin/bash

# Função para exibir o menu principal com estilo gótico
show_main_menu() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          ██████████████████████████          *"
    echo "*          ██                            ██          *"
    echo "*          ██    ███╗   ███╗██╗  ██╗██╗  ██╗    ██          *"
    echo "*          ██    ████╗ ████║██║  ██║██║  ██║    ██          *"
    echo "*          ██    ██╔██╗██╔██║████████║████████║    ██          *"
    echo "*          ██    ██║╚██╔╝██║██╔══██║██╔══██║    ██          *"
    echo "*          ██    ██║ ╚═╝ ██║██║  ██║██║  ██║    ██          *"
    echo "*          ██    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ██          *"
    echo "*          ██                            ██          *"
    echo "*          ██    ███╗   ███╗███████╗██╗  ██╗  ██          *"
    echo "*          ██    ████╗ ████║██╔════╝██║  ██║  ██          *"
    echo "*          ██    ██╔██╗██╔██║█████╗  ███████║  ██          *"
    echo "*          ██    ██║╚██╔╝██║██╔══╝  ██╔══██║  ██          *"
    echo "*          ██    ██║ ╚═╝ ██║███████╗██║  ██║  ██          *"
    echo "*          ██    ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝  ██          *"
    echo "****************************************"
    echo -e "\033[0m" # Reset color

    echo -e "\033[1;37m" # Cor branca para o texto
    echo "Escolha uma opção:"
    echo "1. Links de Apps de Devs"
    echo "2. Mudar Cores RGB e Tema Geral"
    echo "3. Exibir Estatísticas do Sistema"
    echo "4. Atualizar Pacotes do Termux"
    echo "5. Ver Logs Recentes"
    echo "6. Abrir Editor de Texto"
    echo "7. Configurações de Rede"
    echo "8. Informações do Sistema"
    echo "9. Atalhos de Comandos"
    echo "10. Gerenciar Arquivos"
    echo "11. Executar Script Personalizado"
    echo "12. Monitorar Processos"
    echo "13. Backup de Dados"
    echo "14. Restaurar Sistema"
    echo "15. Sair"
    echo -e "\033[0m" # Reset color

    read -p "Digite o número da opção desejada: " option
    case $option in
        1) show_devs_links ;;
        2) change_colors ;;
        3) show_system_stats ;;
        4) update_packages ;;
        5) show_logs ;;
        6) open_text_editor ;;
        7) network_settings ;;
        8) system_info ;;
        9) command_shortcuts ;;
        10) manage_files ;;
        11) run_custom_script ;;
        12) monitor_processes ;;
        13) backup_data ;;
        14) restore_system ;;
        15) exit 0 ;;
        *) echo "Opção inválida!"; sleep 2; show_main_menu ;;
    esac
}

# Funções de sub-menu
show_devs_links() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*        Links de Apps de Desenvolvedores       *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "1. GitHub: https://github.com"
    echo "2. Stack Overflow: https://stackoverflow.com"
    echo "3. Hacker News: https://news.ycombinator.com"
    echo "4. Reddit Programming: https://www.reddit.com/r/programming/"
    echo "5. Dev.to: https://dev.to"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..." 
    show_main_menu
}

change_colors() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*       Mudar Cores RGB e Tema Geral       *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "1. Alterar cor do RGB"
    echo "2. Alterar cor geral do tema"
    echo "3. Voltar ao menu principal"
    echo -e "\033[0m" # Reset color
    read -p "Escolha uma opção: " color_option
    case $color_option in
        1) change_rgb ;;
        2) change_theme_color ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!"; sleep 2; change_colors ;;
    esac
}

change_rgb() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*           Alterar Cor do RGB                *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "Digite a nova cor RGB (exemplo: #FF0000 para vermelho):"
    read new_rgb_color
    # Aqui você pode adicionar o código para alterar a cor RGB no seu sistema
    echo "Cor RGB alterada para $new_rgb_color"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu anterior..."
    change_colors
}

change_theme_color() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*        Alterar Cor Geral do Tema          *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "Digite a nova cor geral do tema (exemplo: #330000 para um vermelho escuro):"
    read new_theme_color
    # Aqui você pode adicionar o código para alterar a cor do tema no seu sistema
    echo "Cor geral do tema alterada para $new_theme_color"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu anterior..."
    change_colors
}

show_system_stats() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*       Estatísticas do Sistema           *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "Sistema Operacional: $(uname -s)"
    echo "Versão do Kernel: $(uname -r)"
    echo "Arquitetura: $(uname -m)"
    echo "Uso de CPU: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')%"
    echo "Uso de Memória: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
    echo "Espaço em Disco: $(df -h | grep '^/dev/' | awk '{print $1 ": " $5 " used"}')"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

update_packages() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*         Atualizando Pacotes do Termux      *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    apt update && apt upgrade
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

show_logs() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Logs Recentes                 *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    cat /var/log/syslog | tail -n 50
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

open_text_editor() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Abrir Editor de Texto         *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    nano
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

network_settings() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Configurações de Rede          *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "1. Ver Status da Rede"
    echo "2. Configurar IP"
    echo "3. Voltar ao menu principal"
    echo -e "\033[0m" # Reset color
    read -p "Escolha uma opção: " network_option
    case $network_option in
        1) check_network_status ;;
        2) configure_ip ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!"; sleep 2; network_settings ;;
    esac
}

check_network_status() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Status da Rede                *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    ifconfig
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu anterior..."
    network_settings
}

configure_ip() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Configurar IP                 *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    read -p "Digite o novo IP: " new_ip
    # Aqui você pode adicionar o código para configurar o IP no seu sistema
    echo "Novo IP configurado para $new_ip"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu anterior..."
    network_settings
}

system_info() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Informações do Sistema        *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    uname -a
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

command_shortcuts() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*        Atalhos de Comandos             *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "1. Atualizar Termux: apt update && apt upgrade"
    echo "2. Verificar Espaço em Disco: df -h"
    echo "3. Verificar Uso de Memória: free -h"
    echo "4. Abrir Editor de Texto: nano"
    echo "5. Ver Status da Rede: ifconfig"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

manage_files() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Gerenciar Arquivos            *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "1. Listar Arquivos: ls -l"
    echo "2. Mover Arquivos: mv [origem] [destino]"
    echo "3. Copiar Arquivos: cp [origem] [destino]"
    echo "4. Remover Arquivos: rm [arquivo]"
    echo "5. Voltar ao menu principal"
    echo -e "\033[0m" # Reset color
    read -p "Escolha uma opção: " file_option
    case $file_option in
        1) ls -l ;;
        2) echo "Digite o arquivo de origem e o destino:"; read src dst; mv "$src" "$dst" ;;
        3) echo "Digite o arquivo de origem e o destino:"; read src dst; cp "$src" "$dst" ;;
        4) echo "Digite o arquivo a ser removido:"; read file; rm "$file" ;;
        5) show_main_menu ;;
        *) echo "Opção inválida!"; sleep 2; manage_files ;;
    esac
}

run_custom_script() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*        Executar Script Personalizado   *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "Digite o caminho do script a ser executado:"
    read script_path
    bash "$script_path"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

monitor_processes() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*         Monitorar Processos            *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    top
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

backup_data() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Backup de Dados               *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "Digite o diretório de origem para o backup:"
    read src_dir
    echo "Digite o diretório de destino para o backup:"
    read dest_dir
    rsync -av "$src_dir" "$dest_dir"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

restore_system() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Restaurar Sistema             *"
    echo "****************************************"
    echo -e "\033[1;37m" # Cor branca para o texto
    echo "Digite o diretório de backup para restaurar:"
    read backup_dir
    echo "Digite o diretório de destino para a restauração:"
    read restore_dir
    rsync -av "$backup_dir" "$restore_dir"
    echo -e "\033[0m" # Reset color
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Inicia o menu principal
show_main_menu

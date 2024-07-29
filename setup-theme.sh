#!/bin/bash

# Função para exibir o menu principal
show_main_menu() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*           Anonimus Ofc Menu           *"
    echo "****************************************"
    echo "* 1. Links de Apps de Devs               *"
    echo "* 2. Mudar Cores RGB e Tema Geral         *"
    echo "* 3. Gerenciamento de Arquivos            *"
    echo "* 4. Configurações de Rede                *"
    echo "* 5. Informações do Sistema              *"
    echo "* 6. Atualizar Pacotes                    *"
    echo "* 7. Monitorar Uso de Recursos            *"
    echo "* 8. Backup de Dados                      *"
    echo "* 9. Abrir Editor de Texto                *"
    echo "* 10. Executar Script de Atualização      *"
    echo "* 11. Mostrar Logs                        *"
    echo "* 12. Configurar Ambiente de Desenvolvimento *"
    echo "* 13. Verificar Atualizações do Sistema   *"
    echo "* 14. Reiniciar Termux                    *"
    echo "* 15. Sair                                *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-15): " option

    case $option in
        1) show_dev_apps_menu ;;
        2) change_colors ;;
        3) file_management ;;
        4) network_config ;;
        5) system_info ;;
        6) update_packages ;;
        7) monitor_resources ;;
        8) backup_data ;;
        9) open_text_editor ;;
        10) run_update_script ;;
        11) show_logs ;;
        12) setup_dev_env ;;
        13) check_system_updates ;;
        14) restart_termux ;;
        15) exit ;;
        *) echo "Opção inválida!" ; sleep 2 ; show_main_menu ;;
    esac
}

# Função para exibir o menu de links de apps de devs
show_dev_apps_menu() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*       Links de Apps de Devs           *"
    echo "****************************************"
    echo "* 1. App 1                               *"
    echo "* 2. App 2                               *"
    echo "* 3. App 3                               *"
    echo "* 4. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-4): " option

    case $option in
        1) open_app_link "https://app1.com" ;;
        2) open_app_link "https://app2.com" ;;
        3) open_app_link "https://app3.com" ;;
        4) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; show_dev_apps_menu ;;
    esac
}

# Função para abrir o link do app no navegador
open_app_link() {
    local url=$1
    echo "Abrindo $url..."
    xdg-open $url
    sleep 2
    show_dev_apps_menu
}

# Função para mudar cores RGB e tema geral
change_colors() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*      Mudar Cores RGB e Tema Geral      *"
    echo "****************************************"
    echo "* 1. Alterar Cor RGB                     *"
    echo "* 2. Alterar Cor Geral do Tema           *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) set_rgb_color ;;
        2) set_theme_color ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; change_colors ;;
    esac
}

# Função para definir a cor RGB
set_rgb_color() {
    clear
    echo "Defina a cor RGB (exemplo: #ff0000):"
    read rgb_color
    echo "Cor RGB definida como $rgb_color"
    # Aqui você pode adicionar o código para aplicar a cor RGB
    sleep 2
    change_colors
}

# Função para definir a cor geral do tema
set_theme_color() {
    clear
    echo "Defina a cor geral do tema (exemplo: #ff0000):"
    read theme_color
    echo "Cor geral do tema definida como $theme_color"
    # Aqui você pode adicionar o código para aplicar a cor do tema
    sleep 2
    change_colors
}

# Função para gerenciamento de arquivos
file_management() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*        Gerenciamento de Arquivos       *"
    echo "****************************************"
    echo "* 1. Listar Arquivos                     *"
    echo "* 2. Mover Arquivo                       *"
    echo "* 3. Copiar Arquivo                      *"
    echo "* 4. Excluir Arquivo                     *"
    echo "* 5. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-5): " option

    case $option in
        1) ls -la ;;
        2) echo "Digite o caminho do arquivo para mover:" ; read src ; echo "Digite o destino:" ; read dest ; mv $src $dest ;;
        3) echo "Digite o caminho do arquivo para copiar:" ; read src ; echo "Digite o destino:" ; read dest ; cp $src $dest ;;
        4) echo "Digite o caminho do arquivo para excluir:" ; read file ; rm $file ;;
        5) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; file_management ;;
    esac
}

# Função para configurações de rede
network_config() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*        Configurações de Rede           *"
    echo "****************************************"
    echo "* 1. Exibir Configurações de IP           *"
    echo "* 2. Testar Conexão com o Ping            *"
    echo "* 3. Configurar IP Estático              *"
    echo "* 4. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-4): " option

    case $option in
        1) ifconfig ;;
        2) echo "Digite o endereço para ping:" ; read address ; ping -c 4 $address ;;
        3) echo "Configuração de IP estático não implementada" ; sleep 2 ; network_config ;;
        4) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; network_config ;;
    esac
}

# Função para informações do sistema
system_info() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*         Informações do Sistema         *"
    echo "****************************************"
    echo "* 1. Informações de Hardware              *"
    echo "* 2. Informações de Software              *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) lshw ;;
        2) uname -a ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; system_info ;;
    esac
}

# Função para atualizar pacotes
update_packages() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Atualizar Pacotes            *"
    echo "****************************************"
    echo "* 1. Atualizar Todos os Pacotes          *"
    echo "* 2. Atualizar Pacote Específico         *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) pkg update && pkg upgrade ;;
        2) echo "Digite o nome do pacote para atualizar:" ; read package ; pkg install --upgrade $package ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; update_packages ;;
    esac
}

# Função para monitorar uso de recursos
monitor_resources() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*        Monitorar Uso de Recursos       *"
    echo "****************************************"
    echo "* 1. Uso da CPU                          *"
    echo "* 2. Uso da Memória                      *"
    echo "* 3. Uso do Disco                        *"
    echo "* 4. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-4): " option

    case $option in
        1) top ;;
        2) free -h ;;
        3) df -h ;;
        4) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; monitor_resources ;;
    esac
}

# Função para backup de dados
backup_data() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*          Backup de Dados              *"
    echo "****************************************"
    echo "* 1. Criar Backup                        *"
    echo "* 2. Restaurar Backup                    *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) echo "Digite o diretório de origem para backup:" ; read src ; echo "Digite o diretório de destino:" ; read dest ; tar -cvzf $dest/backup_$(date +%F).tar.gz $src ;;
        2) echo "Digite o arquivo de backup para restaurar:" ; read backup_file ; echo "Digite o diretório de destino:" ; read dest ; tar -xvzf $backup_file -C $dest ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; backup_data ;;
    esac
}

# Função para abrir editor de texto
open_text_editor() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*       Abrir Editor de Texto           *"
    echo "****************************************"
    echo "* 1. Abrir Nano                          *"
    echo "* 2. Abrir Vim                           *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) nano ;;
        2) vim ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; open_text_editor ;;
    esac
}

# Função para executar um script de atualização
run_update_script() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*     Executar Script de Atualização     *"
    echo "****************************************"
    echo "* 1. Atualizar Sistema                   *"
    echo "* 2. Limpar Cache                        *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) echo "Atualizando sistema..." ; pkg update && pkg upgrade ;;
        2) echo "Limpando cache..." ; pkg clean ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; run_update_script ;;
    esac
}

# Função para mostrar logs
show_logs() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*               Mostrar Logs            *"
    echo "****************************************"
    echo "* 1. Logs do Sistema                     *"
    echo "* 2. Logs de Aplicativos                 *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) cat /var/log/syslog ;;
        2) cat /var/log/app.log ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; show_logs ;;
    esac
}

# Função para configurar o ambiente de desenvolvimento
setup_dev_env() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*  Configurar Ambiente de Desenvolvimento *"
    echo "****************************************"
    echo "* 1. Instalar Ferramentas de Desenvolvimento *"
    echo "* 2. Configurar IDE                     *"
    echo "* 3. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-3): " option

    case $option in
        1) echo "Instalando ferramentas de desenvolvimento..." ; pkg install git vim ;;
        2) echo "Configuração de IDE não implementada" ; sleep 2 ; setup_dev_env ;;
        3) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; setup_dev_env ;;
    esac
}

# Função para verificar atualizações do sistema
check_system_updates() {
    clear
    echo -e "\033[1;31m" # Cor vermelha intensa
    echo "****************************************"
    echo "*     Verificar Atualizações do Sistema  *"
    echo "****************************************"
    echo "* 1. Verificar Atualizações Disponíveis  *"
    echo "* 2. Voltar ao Menu Principal            *"
    echo "****************************************"
    echo -e "\033[0m" # Resetar cor

    read -p "Escolha uma opção (1-2): " option

    case $option in
        1) pkg update ;;
        2) show_main_menu ;;
        *) echo "Opção inválida!" ; sleep 2 ; check_system_updates ;;
    esac
}

# Função para reiniciar o Termux
restart_termux() {
    clear
    echo "Reiniciando Termux..."
    sleep 2
    pkill -f com.termux
}

# Inicia o menu principal
show_main_menu

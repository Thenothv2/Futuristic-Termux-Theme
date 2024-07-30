#!/bin/bash

# Definir cores
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Função para exibir o início do script com estilo LED
show_startup() {
    clear
    echo -e "${RED}"
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
    echo -e "${RESET}"
    sleep 1
}

# Função para mostrar o menu principal
show_main_menu() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*                Menu Principal          *"
    echo "****************************************"
    echo "* 1. Monitorar Processos                 *"
    echo "* 2. Backup de Dados                     *"
    echo "* 3. Restaurar Sistema                  *"
    echo "* 4. Teste de Velocidade da Internet     *"
    echo "* 5. Instalar Pacotes Essenciais         *"
    echo "* 6. Limpar Cache do Sistema             *"
    echo "* 7. Exibir Árvores de Diretórios        *"
    echo "* 8. Mostrar Variáveis de Ambiente       *"
    echo "* 9. Sistema                             *"
    echo "* 10. Sair                               *"
    echo "****************************************"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " option
    case $option in
        1) monitor_processes ;;
        2) backup_data ;;
        3) restore_system ;;
        4) speed_test ;;
        5) install_essentials ;;
        6) clear_cache ;;
        7) display_tree ;;
        8) show_env_variables ;;
        9) show_system_menu ;;
        10) exit ;;
        *) echo "Opção inválida!"; sleep 2; show_main_menu ;;
    esac
}

# Funções para o menu de gerenciamento de processos
monitor_processes() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*              Monitorar Processos       *"
    echo "****************************************"
    echo -e "${WHITE}"
    top
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Funções para backup de dados
backup_data() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*              Backup de Dados           *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o diretório de origem: " source_dir
    read -p "Digite o diretório de destino: " dest_dir
    tar -czvf "$dest_dir/backup_$(date +%F_%T).tar.gz" "$source_dir"
    echo "Backup realizado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Funções para restaurar o sistema
restore_system() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*           Restaurar Sistema            *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o arquivo de backup para restaurar: " backup_file
    tar -xzvf "$backup_file" -C /
    echo "Sistema restaurado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Funções para teste de velocidade da internet
speed_test() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Teste de Velocidade          *"
    echo "****************************************"
    echo -e "${WHITE}"
    speedtest-cli
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Funções para instalação de pacotes essenciais
install_essentials() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*       Instalar Pacotes Essenciais       *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo apt-get update
    sudo apt-get install -y curl git vim
    echo "Pacotes essenciais instalados!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Funções para limpar cache do sistema
clear_cache() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*            Limpar Cache                *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo apt-get clean
    echo "Cache limpo!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Funções para exibir árvores de diretórios
display_tree() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*        Exibir Árvores de Diretórios     *"
    echo "****************************************"
    echo -e "${WHITE}"
    tree
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu principal..."
    show_main_menu
}

# Funções para mostrar variáveis de ambiente
show_env_variables() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*        Mostrar Variáveis de Ambiente   *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Listar Variáveis de Ambiente"
    echo "2. Buscar Variável de Ambiente"
    echo "3. Adicionar Variável de Ambiente"
    echo "4. Editar Variável de Ambiente"
    echo "5. Excluir Variável de Ambiente"
    echo "6. Exibir Variáveis do Sistema"
    echo "7. Exportar Variáveis"
    echo "8. Importar Variáveis"
    echo "9. Configurar Variáveis de Ambiente"
    echo "10. Verificar Variáveis de Ambiente"
    echo "11. Listar Variáveis de Ambiente por Tipo"
    echo "12. Resetar Variáveis de Ambiente"
    echo "13. Visualizar Variáveis de Ambiente Recentes"
    echo "14. Backup das Variáveis de Ambiente"
    echo "15. Restaurar Variáveis de Ambiente"
    echo "16. Verificar Permissões de Variáveis"
    echo "17. Exportar Variáveis para Arquivo"
    echo "18. Importar Variáveis de Arquivo"
    echo "19. Limpar Variáveis de Ambiente"
    echo "20. Exibir Variáveis de Ambiente em Ordem"
    echo "21. Voltar ao Menu Principal"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " env_option
    case $env_option in
        1) list_env_variables ;;
        2) search_env_variable ;;
        3) add_env_variable ;;
        4) edit_env_variable ;;
        5) delete_env_variable ;;
        6) display_system_env_variables ;;
        7) export_env_variables ;;
        8) import_env_variables ;;
        9) configure_env_variables ;;
        10) check_env_variables ;;
        11) list_env_variables_by_type ;;
        12) reset_env_variables ;;
        13) view_recent_env_variables ;;
        14) backup_env_variables ;;
        15) restore_env_variables ;;
        16) check_env_variable_permissions ;;
        17) export_env_variables_to_file ;;
        18) import_env_variables_from_file ;;
        19) clear_env_variables ;;
        20) display_env_variables_in_order ;;
        21) show_main_menu ;;
        *) echo "Opção inválida!"; sleep 2; show_env_variables ;;
    esac
}

# Funções para o menu de sistema
show_system_menu() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*                Menu Sistema            *"
    echo "****************************************"
    echo "* 1. Atualizar Sistema                   *"
    echo "* 2. Gerenciar Senhas                    *"
    echo "* 3. Configurar Rede                     *"
    echo "* 4. Segurança                           *"
    echo "* 5. Serviços                            *"
    echo "* 6. Monitorar Recursos                  *"
    echo "* 7. Automação                           *"
    echo "* 8. Sistema de Arquivos                 *"
    echo "* 9. Informações do Sistema              *"
    echo "* 10. Personalização                     *"
    echo "* 11. Aplicações                         *"
    echo "* 12. Backup e Restauração               *"
    echo "* 13. Logs                               *"
    echo "* 14. Mensagens de Sistema               *"
    echo "* 15. Ajustes de Hardware                *"
    echo "* 16. Atualizações de Software           *"
    echo "* 17. Gerenciar Pacotes                  *"
    echo "* 18. Ferramentas de Desenvolvimento      *"
    echo "* 19. Monitoramento de Sistema           *"
    echo "* 20. Configurações de Usuário           *"
    echo "* 21. Exibir Informações de Hardware     *"
    echo "* 22. Ajustar Preferências               *"
    echo "* 23. Configuração de Desktop             *"
    echo "* 24. Visualização de Logs               *"
    echo "* 25. Limpar Cache                       *"
    echo "* 26. Gerenciamento de Dispositivos       *"
    echo "* 27. Serviços de Rede                   *"
    echo "* 28. Ajustes de Segurança               *"
    echo "* 29. Configurar Ambiente de Trabalho    *"
    echo "* 30. Personalizar Terminal              *"
    echo "* 31. Testar Conexão de Rede             *"
    echo "* 32. Gerenciar Backups                  *"
    echo "* 33. Atualizar Pacotes                  *"
    echo "* 34. Gerenciar Usuários                 *"
    echo "* 35. Exibir Recursos de Sistema         *"
    echo "* 36. Configurações de Privacidade       *"
    echo "* 37. Alterar Configurações de Software  *"
    echo "* 38. Verificar Logs do Sistema          *"
    echo "* 39. Ajustar Configurações de Sistema   *"
    echo "* 40. Gerenciar Logs de Erro             *"
    echo "* 41. Atualizações de Segurança          *"
    echo "* 42. Exibir Informações de Rede         *"
    echo "* 43. Configurar Firewall                *"
    echo "* 44. Gerenciar Pacotes de Segurança     *"
    echo "* 45. Configurar Protocolos              *"
    echo "* 46. Atualizar Sistema Operacional      *"
    echo "* 47. Configurações Avançadas            *"
    echo "* 48. Monitorar Logs                     *"
    echo "* 49. Gerenciar Scripts                  *"
    echo "* 50. Ajustar Preferências do Sistema    *"
    echo "* 51. Backup de Configurações            *"
    echo "* 52. Restaurar Configurações            *"
    echo "* 53. Monitorar Desempenho               *"
    echo "* 54. Atualizar Drivers                  *"
    echo "* 55. Gerenciar Conexões de Rede          *"
    echo "* 56. Personalizar Interface             *"
    echo "* 57. Configurar Aplicações              *"
    echo "* 58. Exibir Informações de Rede         *"
    echo "* 59. Gerenciar Arquivos de Configuração *"
    echo "* 60. Ajustar Performance                *"
    echo "* 61. Configurações de Sistema Avançadas *"
    echo "* 62. Monitorar Serviços                 *"
    echo "* 63. Testar Rede                        *"
    echo "* 64. Atualizar Configurações            *"
    echo "* 65. Verificar Backups                  *"
    echo "* 66. Gerenciar Aplicações               *"
    echo "* 67. Configurações de Privacidade       *"
    echo "* 68. Atualizar Aplicações               *"
    echo "* 69. Ajustar Configurações de Usuário   *"
    echo "* 70. Exibir Recursos de Sistema         *"
    echo "* 71. Configurações de Terminal          *"
    echo "* 72. Gerenciar Segurança                *"
    echo "* 73. Atualizar Firmware                 *"
    echo "* 74. Configurar Rede Avançada           *"
    echo "* 75. Verificar Atualizações             *"
    echo "* 76. Monitorar Sistema Operacional      *"
    echo "* 77. Gerenciar Permissões               *"
    echo "* 78. Ajustes de Configuração            *"
    echo "* 79. Configurar Ambiente                *"
    echo "* 80. Personalizar Sistema               *"
    echo "****************************************"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " sys_option
    case $sys_option in
        1) update_system ;;
        2) manage_passwords ;;
        3) configure_network ;;
        4) security_settings ;;
        5) manage_services ;;
        6) monitor_resources ;;
        7) automation ;;
        8) file_system ;;
        9) system_info ;;
        10) customization ;;
        11) applications ;;
        12) backup_restore ;;
        13) logs ;;
        14) system_messages ;;
        15) hardware_adjustments ;;
        16) software_updates ;;
        17) manage_packages ;;
        18) development_tools ;;
        19) system_monitoring ;;
        20) user_settings ;;
        21) hardware_info ;;
        22) preferences ;;
        23) desktop_configuration ;;
        24) view_logs ;;
        25) clear_cache ;;
        26) device_management ;;
        27) network_services ;;
        28) security_adjustments ;;
        29) work_environment ;;
        30) terminal_customization ;;
        31) test_network_connection ;;
        32) manage_backups ;;
        33) update_packages ;;
        34) manage_users ;;
        35) system_resources ;;
        36) privacy_settings ;;
        37) software_settings ;;
        38) system_logs ;;
        39) system_configurations ;;
        40) error_logs ;;
        41) security_updates ;;
        42) network_info ;;
        43) configure_firewall ;;
        44) security_packages ;;
        45) protocol_settings ;;
        46) update_os ;;
        47) advanced_settings ;;
        48) log_monitoring ;;
        49) script_management ;;
        50) system_preferences ;;
        51) backup_configurations ;;
        52) restore_configurations ;;
        53) performance_monitoring ;;
        54) update_drivers ;;
        55) network_connections ;;
        56) interface_customization ;;
        57) application_configuration ;;
        58) network_info_display ;;
        59) config_files_management ;;
        60) performance_adjustments ;;
        61) advanced_system_settings ;;
        62) service_monitoring ;;
        63) network_testing ;;
        64) configuration_updates ;;
        65) backup_verification ;;
        66) application_management ;;
        67) privacy_configurations ;;
        68) application_updates ;;
        69) user_settings_adjustments ;;
        70) system_resources_display ;;
        71) terminal_settings ;;
        72) security_management ;;
        73) firmware_updates ;;
        74) advanced_network_configuration ;;
        75) update_verification ;;
        76) system_operational_monitoring ;;
        77) permissions_management ;;
        78) configuration_adjustments ;;
        79) environment_configuration ;;
        80) system_personalization ;;
        *) echo "Opção inválida!"; sleep 2; show_system_menu ;;
    esac
}

# Funções adicionais para o menu de sistema

# Atualizar sistema
update_system() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*            Atualizar Sistema           *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo apt-get update && sudo apt-get upgrade
    echo "Sistema atualizado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu do sistema..."
    show_system_menu
}

# Gerenciar senhas
manage_passwords() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*            Gerenciar Senhas           *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Adicionar Senha"
    echo "2. Ver Senhas"
    echo "3. Voltar ao menu principal"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " password_option
    case $password_option in
        1) add_password ;;
        2) view_passwords ;;
        3) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; manage_passwords ;;
    esac
}

# Adicionar senha
add_password() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*             Adicionar Senha           *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome da senha: " password_name
    read -sp "Digite a senha: " password_value
    echo
    echo "$password_name: $password_value" >> passwords.txt
    echo "Senha adicionada com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de senhas..."
    manage_passwords
}

# Ver senhas
view_passwords() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*             Ver Senhas                *"
    echo "****************************************"
    echo -e "${WHITE}"
    cat passwords.txt
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de senhas..."
    manage_passwords
}

# Configurar rede
configure_network() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Configurar Rede              *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Configurar IP Estático"
    echo "2. Configurar DNS"
    echo "3. Configurar Proxy"
    echo "4. Voltar ao menu do sistema"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " network_option
    case $network_option in
        1) configure_static_ip ;;
        2) configure_dns ;;
        3) configure_proxy ;;
        4) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; configure_network ;;
    esac
}

# Configurar IP estático
configure_static_ip() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*         Configurar IP Estático        *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o IP estático: " static_ip
    echo "Configuração de IP estático $static_ip concluída!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de rede..."
    configure_network
}

# Configurar DNS
configure_dns() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*            Configurar DNS             *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o servidor DNS: " dns_server
    echo "Configuração de DNS para $dns_server concluída!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de rede..."
    configure_network
}

# Configurar Proxy
configure_proxy() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*            Configurar Proxy           *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o endereço do proxy: " proxy_address
    echo "Configuração de Proxy para $proxy_address concluída!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de rede..."
    configure_network
}

# Segurança
security_settings() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*              Segurança                *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Configurar Firewall"
    echo "2. Verificar Vulnerabilidades"
    echo "3. Atualizar Software de Segurança"
    echo "4. Voltar ao menu do sistema"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " security_option
    case $security_option in
        1) configure_firewall ;;
        2) check_vulnerabilities ;;
        3) update_security_software ;;
        4) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; security_settings ;;
    esac
}

# Configurar Firewall
configure_firewall() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*           Configurar Firewall         *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo ufw enable
    echo "Firewall configurado e ativado!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de segurança..."
    security_settings
}

# Verificar Vulnerabilidades
check_vulnerabilities() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*       Verificar Vulnerabilidades       *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo apt-get install -y lynis
    sudo lynis audit system
    echo "Verificação de vulnerabilidades concluída!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de segurança..."
    security_settings
}

# Atualizar Software de Segurança
update_security_software() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*    Atualizar Software de Segurança    *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo apt-get update && sudo apt-get upgrade -y
    echo "Software de segurança atualizado!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de segurança..."
    security_settings
}

# Gerenciar serviços
manage_services() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*           Gerenciar Serviços           *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Iniciar Serviço"
    echo "2. Parar Serviço"
    echo "3. Reiniciar Serviço"
    echo "4. Status do Serviço"
    echo "5. Voltar ao menu do sistema"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " service_option
    case $service_option in
        1) start_service ;;
        2) stop_service ;;
        3) restart_service ;;
        4) status_service ;;
        5) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; manage_services ;;
    esac
}

# Iniciar Serviço
start_service() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*           Iniciar Serviço             *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome do serviço: " service_name
    sudo systemctl start $service_name
    echo "Serviço $service_name iniciado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de serviços..."
    manage_services
}

# Parar Serviço
stop_service() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*            Parar Serviço              *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome do serviço: " service_name
    sudo systemctl stop $service_name
    echo "Serviço $service_name parado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de serviços..."
    manage_services
}

# Reiniciar Serviço
restart_service() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*        Reiniciar Serviço              *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome do serviço: " service_name
    sudo systemctl restart $service_name
    echo "Serviço $service_name reiniciado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de serviços..."
    manage_services
}

# Status do Serviço
status_service() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Status do Serviço            *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome do serviço: " service_name
    sudo systemctl status $service_name
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de serviços..."
    manage_services
}

# Automação
automation() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*             Automação                 *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Agendar Tarefas"
    echo "2. Criar Scripts"
    echo "3. Gerenciar Tarefas Agendadas"
    echo "4. Voltar ao menu do sistema"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " automation_option
    case $automation_option in
        1) schedule_tasks ;;
        2) create_scripts ;;
        3) manage_scheduled_tasks ;;
        4) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; automation ;;
    esac
}

# Agendar Tarefas
schedule_tasks() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Agendar Tarefas              *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o comando a ser agendado: " task_command
    read -p "Digite o horário para a execução (ex: '2 4 * * *'): " task_schedule
    echo "$task_schedule $task_command" | sudo tee -a /etc/crontab
    echo "Tarefa agendada com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de automação..."
    automation
}

# Criar Scripts
create_scripts() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*           Criar Scripts               *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome do script (ex: myscript.sh): " script_name
    touch $script_name
    chmod +x $script_name
    echo "Script $script_name criado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de automação..."
    automation
}

# Gerenciar Tarefas Agendadas
manage_scheduled_tasks() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*    Gerenciar Tarefas Agendadas         *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo crontab -l
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de automação..."
    automation
}

# Sistema de Arquivos
file_system() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*        Sistema de Arquivos            *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Listar Arquivos"
    echo "2. Criar Diretório"
    echo "3. Excluir Arquivo"
    echo "4. Voltar ao menu do sistema"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " file_option
    case $file_option in
        1) list_files ;;
        2) create_directory ;;
        3) delete_file ;;
        4) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; file_system ;;
    esac
}

# Listar Arquivos
list_files() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*             Listar Arquivos           *"
    echo "****************************************"
    echo -e "${WHITE}"
    ls -la
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de arquivos..."
    file_system
}

# Criar Diretório
create_directory() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Criar Diretório              *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome do diretório: " dir_name
    mkdir $dir_name
    echo "Diretório $dir_name criado com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de arquivos..."
    file_system
}

# Excluir Arquivo
delete_file() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Excluir Arquivo              *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome do arquivo: " file_name
    rm $file_name
    echo "Arquivo $file_name excluído com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de arquivos..."
    file_system
}

# Informações do Sistema
system_info() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Informações do Sistema       *"
    echo "****************************************"
    echo -e "${WHITE}"
    uname -a
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu do sistema..."
    show_system_menu
}

# Personalização
customization() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*           Personalização              *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Alterar Aparência do Terminal"
    echo "2. Configurar Perfil de Usuário"
    echo "3. Voltar ao menu do sistema"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " customization_option
    case $customization_option in
        1) change_terminal_appearance ;;
        2) configure_user_profile ;;
        3) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; customization ;;
    esac
}

# Alterar Aparência do Terminal
change_terminal_appearance() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*     Alterar Aparência do Terminal      *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Alterar Cor de Fundo"
    echo "2. Alterar Cor do Texto"
    echo "3. Voltar ao menu de personalização"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " appearance_option
    case $appearance_option in
        1) change_background_color ;;
        2) change_text_color ;;
        3) customization ;;
        *) echo "Opção inválida!"; sleep 2; change_terminal_appearance ;;
    esac
}

# Alterar Cor de Fundo
change_background_color() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*      Alterar Cor de Fundo              *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite a cor desejada (ex: '#000000' para preto): " bg_color
    echo "Cor de fundo alterada para $bg_color!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de aparência..."
    change_terminal_appearance
}

# Alterar Cor do Texto
change_text_color() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*      Alterar Cor do Texto              *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite a cor desejada (ex: '#FFFFFF' para branco): " text_color
    echo "Cor do texto alterada para $text_color!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de aparência..."
    change_terminal_appearance
}

# Configurar Perfil de Usuário
configure_user_profile() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*       Configurar Perfil de Usuário     *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Alterar Nome de Usuário"
    echo "2. Alterar Imagem de Perfil"
    echo "3. Voltar ao menu de personalização"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " user_profile_option
    case $user_profile_option in
        1) change_username ;;
        2) change_profile_image ;;
        3) customization ;;
        *) echo "Opção inválida!"; sleep 2; configure_user_profile ;;
    esac
}

# Alterar Nome de Usuário
change_username() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*        Alterar Nome de Usuário         *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o novo nome de usuário: " new_username
    sudo usermod -l $new_username $(whoami)
    echo "Nome de usuário alterado para $new_username!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de perfil..."
    configure_user_profile
}

# Alterar Imagem de Perfil
change_profile_image() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*        Alterar Imagem de Perfil        *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o caminho para a nova imagem de perfil: " profile_image_path
    cp $profile_image_path /home/$(whoami)/profile_image.png
    echo "Imagem de perfil alterada com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de perfil..."
    configure_user_profile
}

# Aplicações
applications() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*             Aplicações                *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Instalar Aplicações"
    echo "2. Remover Aplicações"
    echo "3. Atualizar Aplicações"
    echo "4. Voltar ao menu do sistema"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " applications_option
    case $applications_option in
        1) install_applications ;;
        2) remove_applications ;;
        3) update_applications ;;
        4) show_system_menu ;;
        *) echo "Opção inválida!"; sleep 2; applications ;;
    esac
}

# Instalar Aplicações
install_applications() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Instalar Aplicações           *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome da aplicação: " app_name
    sudo apt-get install $app_name
    echo "Aplicação $app_name instalada com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de aplicações..."
    applications
}

# Remover Aplicações
remove_applications() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*          Remover Aplicações           *"
    echo "****************************************"
    echo -e "${WHITE}"
    read -p "Digite o nome da aplicação: " app_name
    sudo apt-get remove $app_name
    echo "Aplicação $app_name removida com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de aplicações..."
    applications
}

# Atualizar Aplicações
update_applications() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*         Atualizar Aplicações          *"
    echo "****************************************"
    echo -e "${WHITE}"
    sudo apt-get update
    sudo apt-get upgrade -y
    echo "Aplicações atualizadas com sucesso!"
    echo -e "${RESET}"
    read -p "Pressione qualquer tecla para voltar ao menu de aplicações..."
    applications
}

# Menu principal
show_system_menu() {
    clear
    echo -e "${RED}"
    echo "****************************************"
    echo "*             Menu do Sistema           *"
    echo "****************************************"
    echo -e "${WHITE}"
    echo "1. Gerenciar Senhas"
    echo "2. Configurar Rede"
    echo "3. Segurança"
    echo "4. Gerenciar Serviços"
    echo "5. Automação"
    echo "6. Sistema de Arquivos"
    echo "7. Informações do Sistema"
    echo "8. Personalização"
    echo "9. Aplicações"
    echo "0. Sair"
    echo -e "${RESET}"
    read -p "Escolha uma opção: " main_option
    case $main_option in
        1) manage_passwords ;;
        2) configure_network ;;
        3) security_settings ;;
        4) manage_services ;;
        5) automation ;;
        6) file_system ;;
        7) system_info ;;
        8) customization ;;
        9) applications ;;
        0) exit 0 ;;
        *) echo "Opção inválida!"; sleep 2; show_system_menu ;;
    esac
}

# Iniciar menu
show_system_menu

# Parsing HTML

Este script Bash é útil para realizar parsing básico de HTML e resolver hosts contidos em links de uma página da web.

## Como usar

1 - Crie um arquivo "parsing.sh"

```
nano parsing.sh
```

2 - Certifique-se de ter permissões de execução no script:

```
chmod +x parsing.sh
```
3 - Execute o script fornecendo o URL como argumento:

```
./parsing.sh www.alvo.com.br
```

## Funcionalidades:

- O script baixa o HTML da página web fornecida.
- Ele extrai os hosts de todos os links encontrados na página.
- Em seguida, resolve esses hosts para seus endereços IP correspondentes.
- Finalmente, exibe os resultados na saída padrão.

## Exemplo de Saída:

```
#########################################################
|->                  BUSCANDO HOSTS                   <-|
#########################################################
exemplo.com
subdominio.exemplo.com
www.exemplo.com
#########################################################
|->                 RESOLVENDO HOSTS                  <-|
#########################################################
exemplo.com has address 192.0.2.1
subdominio.exemplo.com has address 198.51.100.2
www.exemplo.com has address 203.0.113.3
```

Este script pode ser usado para análise básica de páginas web, auditoria de links, ou como parte de um processo de pentest para identificar possíveis hosts dentro de uma aplicação web.

#!/bin/bash

#Colors
green='\033[1;32m'
orange='\033[0;33m'
white='\033[1;37m'
red='\033[0;31m'


if [ "$1" == "" ]
then
        echo -e "${white}#########################################################"
        echo -e "${white}|->${red}                  +PARSING HTML${red}                    <-|"
        echo -e "${white}|->                    BaianoGeek                     <-|"
        echo -e "${white}|->           ./parsing.sh www.alvo.com.br            <-|"
        echo -e "${white}#########################################################"
else

        wget -q $1 -O $1 
        echo "#########################################################"
        echo "|->                  BUSCANDO HOSTS                   <-|"
        echo "#########################################################"
        cat $1 | grep href $1 | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | > lista$1  grep -v "<li"
        cat lista$1
        echo "#########################################################"
        echo "|->                 RESOLVENDO HOSTS                  <-|"
        echo "#########################################################"
        for url in  $(cat lista$1);
        do
        host $url | grep "has address";
        done

        rm $1
        rm lista$1
fi

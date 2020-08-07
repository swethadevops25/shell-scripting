#!/bin/bash




frontend() {
   echo "Installing frontend service" 
}

mongodb() {
    echo "Installing mongodb service"
}

mysql () {
    echo "Installing mysql service"
}

rabbitmq () {
    echo "Installing rabbitmq service"
}

redis () {
    echo "Installing redis service"
}

cart () {
    echo "Installing cart service"
}

catalogue () {
    echo "Installing catalogue service"
}

user () {
    echo "Installing user service"
}

shipping () {
    echo "Installing shipping service"
}

payment () {
    echo "Installing payment service"
}

usage() {
    echo -e "usage: \t\t\t $0  component"
    echo -e "components: \t\t frontend mangodb mysql rabbitmq redis cart catalogue user shipping payment"
    echo -e "for all components: \t all"
    exit 1
}

case $1 in 
     frontend)
        frontend
        ;;
       mongodb)
          mongodb
       ;;
       mysql)
         mysql
        ;;
       rabbitmq)
         rabbitmq 
        ;;
       redis)
         redis
        ;;
        cart)
         cart
         ;;
        catalogue)
          catalogue
        ;;
        user)
         user
        ;;
        shipping)
          shipping
        ;;
        payment)
          payment
        ;;    
       all)   
        frontend
        mongodb
        mysql 
        rabbitmq 
        redis 
        cart
        catalogue 
        user 
        shipping 
        payment 
        ;;
*) 
         usage
         ;;
    

 esac       
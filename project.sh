#!/bin/bash

LOG_FILE*/tmp/roboshop.log
rm -f $LOG_FILE
 
## check root user or not
ID_USER-$(id -u)
case $ID_USER in
 0) true;;
 *)
    echo "script should be run as root user, or sudo"
    usage
    ;;
  esac  


frontend() {
   echo "Installing frontend service" 
   yum install nginx -y &>$LOG_FILE
   case $? in
   0) echo "nginx install - success"
       ;;
    *)
    echo  "nginx installed - failed"
    exit 1   
    esac   
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
    echo -e "usage: \t\t\t \e{33m$0  component\e{0m"
    echo -e "components: \t\t \e{33mfrontend mangodb mysql rabbitmq redis cart catalogue user shipping payment\e{0m"
    echo -e "for all components: \t \e{33mall\e{0m"
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
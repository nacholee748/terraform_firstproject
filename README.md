# terraform_firstproject
My First Terraform Project

Instalar Tarraform Windows

1. Descargar la versión desde la pagina de Terraform
2. Colocar descompir y colocar el archivo terraform.exe en una ruta como "c:/terraform"
3. Definir en la variable de entorno la ruta anterior

Con los pasos anteriores ya se puede comenzar a usar Terraform

Creamos el archivo main.tf en el cual vamos a definir la forma de usar las variables y en este documento vamos a mostrar como se usan desde la consola de terraform la cual se accede desde la termina (powershell o cmd) para el caso de windows con el comando "terraform console"

Para invocar las variables las podemos hacer de dos maneras
  var.nombreVariable
  "${var.nombreVariable"}
  
Hay diferentes tipos de variables que tenemos definidas en el main.tf y se puede acceder a sus valores de las siguentes formas 

Tipos de Variables 
  Definición en el archivo main.tf
    variable "myvar"{
      default = "hello terraform"
    }
  Variable Valor
    var.myvar

  Variable tipo Map
    Definición en el archivo main.tf
      variable "mymap"{
          type = map(string)
          default = {
              mykey ="my value"
          }
      }
    Para imprimir todo el map 
      var.mymap
    Para imprimir un campo especifico
      var.mymap["mykey"]
    
  Variable tipo List
    Definición en el archivo main.tf
      variable "mylist"{
          type = list
          default = [1,2,3]
      }
    Para imprimir toda la lista
      var.mylist
    Para imprimir un campo especifico se le coloca el inide del campo
      var.mymap[1]
    Obtener un elemento
      element(var.mylist, 1)
    Obtener Varios elementos
      slice(var.mylist, 0,2)
   
-----------------------

Vamos a crear el archivo resource.tf en el cual debemos de especificar el provedor y los recursos a desplegar

Definir el proveedor
  provider "aws"{
  
  }
  
Definir Recursos 
  


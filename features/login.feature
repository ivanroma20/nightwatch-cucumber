            #language:es

            Característica: Login

            @logout
            Escenario: Login con éxito

            Cuando yo realizo login con "ivanbeto@gmail.com" y "pwd123"
            Entonces debo ver "Ivan" en menú lateral del área logueada


            Esquema del escenario: Intentando loguear

            Cuando yo realizo login con "<email>" y "<pass>"
            Entonces debo ver un mensaje de alerta "<text>" "<tipo>"

            Ejemplos:
            | email                | pass   | text                            | tipo   |
            |                      | abc123 | Opps. Cadê o email?             | info   |
            | ivanbeto@qaninja.com |        | Opps. Cadê a senha?             | info   |
            | ivanbeto@gmail.com   | 123456 | Usuário e/ou senha inválidos    | danger |
            | ivan@gmail.com       | 123456 | Texto modificado para que falle | danger |
# [Sistema Escolar Boletim - SEB](https://github.com/lfnd0/BD1_Sistema_Escolar_Boletim.git)


> O SEB é uma plataforma desenvolvida com a linguagem de programação Java e o sistema de gestão de base de dados MySQL, sendo o objetivo principal da aplicação disponibilizar o cadastro de alunos, professores e disciplinas, além de armazenar as notas dos respectivos discentes do Instituto Municipal de Arapiraca - IMA (instituição fictícia).


## Ambiente para utilização do SEB

Para testar/utilizar a aplicação em um dispositivo desktop, será necessária a instalação das seguintes ferramentas:

  * [Java SE Development Kit 11](https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html)
  * [Eclipse IDE](https://www.eclipse.org/downloads/)
  * [MySQL 8.0 + Workbench](https://dev.mysql.com/downloads/)


## Executando o seb.jar

Após a instalação e configuração das ferramentas citadas anteriormente, abra o ``MySQL Workbench``, crie um usuário e uma conexão no MySQL com ``nome``, ``login`` e ``senha`` "es1", adicione ao mesmo todos os privilégios de usuário. Ao finizar esta tarefa, realize a importação do banco de dados do SEB a partir do arquivo ``sebBD.sql`` no localizado no diretório ``database`` do projeto.

Por fim localize o arquivo `seb_v0.1.0.jar`, abra o terminal do seu sistema operacional no mesmo diretório onde encontra-se o referido arquivo, então execute o seguinte comando:

```sh
java -jar seb.jar
```

O ``Menu Principal`` do SEB aparecerá para você com as seguintes opções:

 * ``1 - Administrador``
 * ``2 - Aluno``
 * ``3 - Professor``

 Escolha o perfil ``1 - Administador`` digitando ``1``. Nos campos de login e senha insira "es1". Agora, a partir do acesso a este usuário, usufrua das funcionalidades implementadas para o administrador e consequentemente aos demais usuários.

 Escolha o perfil ``2 - Aluno`` digitando ``2``. Nos campos de login insura "arthur" e em senha insira "123". Agora, a partir do acesso a este usuário, usufrua das funcionalidades implementadas para o aluno.

 Escolha o perfil ``3 - Aluno`` digitando ``3``. Nos campos de login insura "jose" e em senha insira "123". Agora, a partir do acesso a este usuário, usufrua das funcionalidades implementadas para o professor.

 **Observação**: a senha padrão para os demais usuários aluno e professor é "123".


# Time de desenvolvimento

  * [Danillo Rodrigues Abreu](https://github.com/danilo100kl)
  * [João Marcos Oliveira Farias](https://github.com/JoaoMarcoss)
  * [Luiz Fernando da Silva](https://github.com/lfnd0)
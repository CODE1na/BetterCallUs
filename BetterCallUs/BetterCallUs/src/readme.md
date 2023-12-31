# Como instalar e rodar o projeto

## Requisitos
- Windows
- Instalar NodeJs [aqui](https://nodejs.org/dist/v18.18.2/node-v18.18.2-x64.msi);
  - Instale com todas as dependências, voce pode ver como instalar [aqui](https://balta.io/blog/node-npm-instalacao-configuracao-e-primeiros-passos#:~:text=A%20instala%C3%A7%C3%A3o%20do%20Node%20no,adicionado%20ao%20PATH%20do%20Windows.).
- Instalar MySQL [aqui](https://dev.mysql.com/downloads/installer/).
  - Instalar as seguintes dependências:
    - Mysql Server Versão 8.0.34;
    - Mysql Workbench 8.0.34;
    - Mysql Router 8.0.34;
    - Mysql Shell 8.0.34.
  - Você pode ver como instalar [aqui](https://dicasdeprogramacao.com.br/como-instalar-o-mysql-no-windows/).

## Execução

### MySQL
  Você deve executar todas as linhas do arquivo **bdTicket.sql** e **bdSLA.sql** dentro do MySQL Workbench, selecionando todo as linhas dentro do arquivo, para saber como abrir o arquivo acesse [aqui](https://pt.wikihow.com/Abrir-um-Arquivo-SQL) e para executar o script inteiro você deve clicar e segurar, um atrás do outro, e soltar no útimo o botão, **ctrl + shift + enter**.

### JavaScript
#### Primeiramente, abra o cmd da pasta do projeto e digite:
```
cd .\Sprint-4\BetterCallUs\src\BetterCallUs\app\App.tsx
```
  E em seguida:
```
npm install
```

#### Agora abra outros 2 cmds tambem na pasta do projeto e digite em ambos:
```
cd .\Sprint-4\BetterCallUs\src\BetterCallUs\server\
```
  E em seguida:
```
npm install
```

#### Para prosseguir abra os 2 ultimos cmds que foram criados (Aqueles acima que abriram a pasta server) e digite:

No primeiro:
```
node .\server.js
```

No segundo:
```
node .\server2.js
```

#### Por ultimo digite no primeiro cmd criado:

```
npm start
```


  A página deve abrir automaticamente no navegador, caso ela não tenha sida aberta automaticamente, voce pode acessar ela por [aqui](http://localhost:3000).


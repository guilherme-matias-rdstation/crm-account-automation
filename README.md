# crm-account-automation

![Peek 2023-03-01 15-10](https://user-images.githubusercontent.com/98399415/222225806-22f58cb7-a61e-45c8-86bf-f4f116d18af2.gif)

### Instalação

1. Baixar o projeto

```shell
git clone git@github.com:guilherme-matias-rdstation/crm-account-automation.git
```

2. Executar o instalador

```shell
cd crm-account-automation
./install.sh
```

3. Colocar o path do mock-api, exemplo:

`/home/GUILHERME.MATIAS/Workspace/rdstation/crm/frontend/packages/api-mock`

4. Colocar o path do crm-front-end, exemplo:

`/home/GUILHERME.MATIAS/Workspace/rdstation/crm/frontend/` 

---

### Execução

Executar o comando `crm-account-up` passando o ID da sessão de staging ou production (obrigatório) e o ambiente respectivamente

```
crm-account-up <sessioID> <env>
``` 

Exemplo STG:

```
crm-account-up 1234567890 staging
``` 

Exemplo PRD:

```
crm-account-up 1234567890 production
```

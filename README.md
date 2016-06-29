# Site Pyladies Porto Alegre

O site é desenvolvido em Django e está disponível em: https://pyladiespoa.pythonanywhere.com/

## Instalando e rodando

Assumindo que seu git e virtualenv já estão configurados, faça o clone do repositório:

```
$ git clone git@github.com:pyladiespoa/site.git
```

Entre na pasta do repositório e crie um ambiente virtual (virtualenv). Se você não sabe como criar uma virtualenv, é altamente recomendado que leia o [tutorial DjangoGirls](http://tutorial.djangogirls.org/pt/django_installation/). Ative a virtualenv.

```
$ virtualenv --python=python3 myvenv
$ source myvenv/bin/activate
```

Entre no diretório. Instale o Django na virtualenv (sempre trabalhe no ambiente virtual) e colete os arquivos estáticos:

```
$ cd site
$ pip install django whitenoise
$ python manage.py collectstatic
```
Ao aparecer a mensagem "This will overwrite existing files! Are you sure you want to do this?", escreva: Yes

Crie um banco de dados e um superusuário
```
$ python manage.py migrate
$ python manage.py createsuperuser
```
Atenção: se você estiver usando um MacOS X para desenvolver, você provavelmente precisará exportar algumas variáveis locale do Python. Siga esse link: [Fix unknown locale](http://patrick.arminio.info/fix-valueerror-unknown-locale-utf8/)

Inicialize o servidor:
```
(virtualenv)$ python manage.py runserver
```
Abra o browser em localhost:8000 para ver o site. Ele não vai ter nenhum post, porque o banco de dados que você criou está vazio (não é o mesmo do site). Para adicionar posts e testar layout, você precisa clicar no cadeado e logar com o superuser que criou. Essas são as instruções para a primeira vez que for rodar o site no seu computador, depois de configurado...

## Inicializando o site depois de configurado

```
$ source myvenv/bin/activate
$ cd site
$ python manage.py runserver
```

Para parar o servidor: CTRL+C
Para sair do ambiente virtual: $ deactivate

## Estrutura

```
site
├── LICENSE
├── blog
│   ├── __init__.py
│   ├── admin.py
│   ├── forms.py
│   ├── migrations
│   ├── models.py
│   ├── static        # CSS, fontes, imagens, vão aqui
│   ├── templates
│   │   ├── blog
│   │   │   ├── base.html             # Layout principal do site
│   │   │   ├── post_detail.html      # Layout quando abre um artigo
│   │   │   ├── post_draft_list.html  # Layout da lista de rascunhos
│   │   │   ├── post_edit.html        # Layout de edição de artigo
│   │   │   └── post_list.html        # Layout da lista de artigos -> home do site
│   │   └── registration
│   │       └── login.html  # Layout página de login
│   ├── tests.py
│   ├── urls.py
│   └── views.py
├── manage.py
└── mysite
    ├── __init__.py
    ├── urls.py
    └── wsgi.py
```

# Site Pyladies Porto Alegre

O site é desenvolvido em Django e está disponível em: https://pyladiespoa.pythonanywhere.com/

## Instalando e rodando

Assumindo que seu git e virtualenv já estão configurados, faça o clone do repositório:

```
$ git clone git@github.com:pyladiespoa/site.git
```

Entre na pasta do repositório e crie um ambiente virtual (virtualenv). Chamei de myvenv. Se você não sabe como criar uma virtualenv, leia o [tutorial DjangoGirls](http://tutorial.djangogirls.org/pt/django_installation/).

Atenção: se você estiver usando um MacOS X para desenvolver, você provavelmente precisará exportar algumas variáveis locale do Python. Siga esse link: [Fix unknown locale](http://patrick.arminio.info/fix-valueerror-unknown-locale-utf8/)

Ative seu virtualenv e inicialize o servidor:
```
(virtualenv)$ python manage.py runserver
```
Abra o browser em localhost:8000 para ver o site.

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

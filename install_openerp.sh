#!/bin/bash
usuario=$USER
echo "\n>>> Instalando Banco de dados\n"
sudo apt-get install postgresql
echo "\n>>> Instalando Dependências do OpenERP\n"
sudo apt-get install graphviz ghostscript postgresql-client \
          python-dateutil python-feedparser python-gdata \
          python-ldap python-libxslt1 python-lxml python-mako \
          python-openid python-psycopg2 python-pybabel python-pychart \
          python-pydot python-pyparsing python-reportlab python-simplejson \
          python-tz python-vatnumber python-vobject python-webdav \
          python-werkzeug python-xlwt python-yaml python-imaging \
          python-matplotlib python-unittest2 python-mock python-docutils \
          python-decorator python-requests python-jinja2 python-pypdf python-passlib \
          python-psutil python-pip python-setuptools
# iniciando a configuração
echo "\n>>> Criando usuário para o banco de dados\n"
sudo su postgres createuser $usuario -s -P $usuario
cd /home/$usuario
echo "\n>>> Clonando o repositório de código do OpenERP 7\n"
git clone https://github.com/ntiufalara/openerp7.git
echo "\n>>> Executando o servidor e abrindo o navegador...\n"
/home/$usuario/openerp7/openerp-server
firefox "http://localhost:8069"

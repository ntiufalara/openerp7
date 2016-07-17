# encoding: UTF-8

from openerp.osv import osv, fields


class Pessoa(osv.Model):
    _name = 'imobiliaria.pessoa'

    _columns = {
        'cpf': fields.char(u'CPF', required=True),
        'name': fields.char(u'Nome completo', required=True),
        'data_nascimento': fields.date(u'Data de nascimento', required=True),
        'telefone_contato': fields.char(u'Telefone para contato', required=True),
    }
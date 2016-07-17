# encoding: UTF-8

from openerp.osv import osv, fields


class Corretor(osv.Model):
    _name = 'imobiliaria.corretor'
    _inherit = 'imobiliaria.pessoa'

    _columns = {
        'comissao': fields.float(u'Comissão (%)'),
        'salario': fields.float(u'Salário (R$)')
    }
class BuscasProfissional < ActiveRecord::Base
	has_many :areas_profissional
	has_many :profissao
	has_many :profissional
	has_many :profissoes_profissional
	has_many :servico
	has_many :registros_servicos_realizado
end

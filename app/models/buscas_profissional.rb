class BuscasProfissional < ActiveRecord::Base
	belongs_to :areas_profissional
	belongs_to :profissao
	belongs_to :profissional
	belongs_to :profissoes_profissional
end

class AreasProfissional < ActiveRecord::Base
	has_many :profissao
	belongs_to :buscas_profissional
end

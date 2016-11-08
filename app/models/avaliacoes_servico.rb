class AvaliacoesServico < ActiveRecord::Base
	belongs_to :servico
	belongs_to :profissional
end

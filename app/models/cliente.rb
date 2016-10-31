class Cliente < ActiveRecord::Base
	has_many :registros_servicos_realizado
end

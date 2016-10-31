class Servico < ActiveRecord::Base
  belongs_to :profissional
  belongs_to :registros_servicos_realizado
end

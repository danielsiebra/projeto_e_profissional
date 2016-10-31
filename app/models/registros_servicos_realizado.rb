class RegistrosServicosRealizado < ActiveRecord::Base
  belongs_to :profissional
  has_many :servico
  belongs_to :cliente
end

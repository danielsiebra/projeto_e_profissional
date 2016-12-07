class RegistrosServicosRealizado < ActiveRecord::Base
  belongs_to :profissional
  belongs_to :servico
  belongs_to :cliente
  belongs_to :profissoes_profissional
end

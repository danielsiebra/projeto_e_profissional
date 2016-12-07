class ServicosProfissional < ActiveRecord::Base
  belongs_to :servico
  belongs_to :profissoes_profissional
end

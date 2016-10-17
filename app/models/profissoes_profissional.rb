class ProfissoesProfissional < ActiveRecord::Base
  belongs_to :profissional
  belongs_to :profissao
  belongs_to :buscas_profissional
end

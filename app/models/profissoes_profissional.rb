class ProfissoesProfissional < ActiveRecord::Base
  belongs_to :profissional
  belongs_to :profissao
  has_many :buscas_profissional
end

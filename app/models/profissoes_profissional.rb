class ProfissoesProfissional < ActiveRecord::Base
  has_many :profissional
  has_many :profissao
  has_many :buscas_profissional
end

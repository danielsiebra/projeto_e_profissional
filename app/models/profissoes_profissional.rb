class ProfissoesProfissional < ActiveRecord::Base
  belongs_to :profissional
  belongs_to :profissao
  has_many :servicos
  belongs_to :buscas_profissional
  has_many :servicos_profissionais
  has_many :servicos, through: :servicos_profissionais
end

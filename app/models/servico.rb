class Servico < ActiveRecord::Base
  belongs_to :profissional
  has_many :registros_servicos_realizados
  belongs_to :profissoes_profissional
  has_many :servicos_profissionais
  has_many :profissoes_profissionais, through: :servicos_profissionais
end

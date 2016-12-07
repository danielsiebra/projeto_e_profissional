class Profissao < ActiveRecord::Base
  has_many :profissoes_profissionais
  has_many :profissionais, through: :profissoes_profissionais
  belongs_to :areas_profissional
  validates :profissao, presence: true,	length: { minimum: 3 }


end

class Profissional < ActiveRecord::Base
  belongs_to :areas_profissional
  has_many :profissoes_profissional
  belongs_to :buscas_profissional
  validates :nome_completo,
	 		  uniqueness: true
end

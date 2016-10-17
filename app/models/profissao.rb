class Profissao < ActiveRecord::Base
  belongs_to :areas_profissional
  has_many :profissoes_profissional
  belongs_to :buscas_profissional
end

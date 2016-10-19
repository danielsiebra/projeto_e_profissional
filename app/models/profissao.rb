class Profissao < ActiveRecord::Base
  belongs_to :areas_profissional
  belongs_to :profissoes_profissional
  belongs_to :buscas_profissional
  validadetes :profissao,
	 		  uniqueness: true
end

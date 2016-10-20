class Profissional < ActiveRecord::Base
  has_many :profissoes_profissional
  validates :nome_completo, 
			  presence: true, 
			  length: { minimum: 3 }
  validates :nome_completo,
	 		  uniqueness: true
end

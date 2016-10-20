class Profissao < ActiveRecord::Base
  belongs_to :areas_profissional
  has_many :profissoes_profissional
  	validates :profissao, 
			  presence: true, 
			  length: { minimum: 3 }

  	validates :profissao, uniqueness: true
end

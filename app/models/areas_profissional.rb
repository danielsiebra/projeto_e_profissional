class AreasProfissional < ActiveRecord::Base
	has_many :profissao
	belongs_to :buscas_profissional
	validates :area, uniqueness: true
	validates :area, length: 5..30
end

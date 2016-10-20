class ProfissoesProfissional < ActiveRecord::Base
  belongs_to :profissional
  belongs_to :profissao
end

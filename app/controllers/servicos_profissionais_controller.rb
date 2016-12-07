class ServicosProfissionaisController < ApplicationController

	def perfil
		@servicos_profissional = Servico.select(:preco, :prazo, :nome, :profissoes_profissionais_id, :descricao).joins(:servicos_profissionais).order("nome")
	end

end

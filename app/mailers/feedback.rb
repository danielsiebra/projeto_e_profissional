class Feedback < ActionMailer::Base
	@remetente = 'contato.profissionais.ja@gmail.com'
	default from: @remetente

	def reconhecimento_email(email)
		mail(to: email, subject: I18n.t('feedback.reconhecimento_email.subject'))
		# raise mail.from.inspect
	end
end
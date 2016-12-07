class RegistraEmailController < ApplicationController
	  def feedback
    @registra_email = RegistraEmail.all 
  end
  
  def create
    raise params.inspect
    email = 'danielsiebra2@gmail.com'
    @enviar = Feedback.reconhecimento_email(email).deliver
    if @enviar
      email = RegistraEmail.create(email: email, remetente: 'contato.profissionais.ja@gmail.com', comentario: I18n.t('feedback.reconhecimento_email.body') )
    end

    respond_to do |format|
      if @enviar
        format.html { redirect_to  feedback_registra_email_index_path, notice: 'Email enviado com sucesso.' }
        format.json { redirect_to  feedback_registra_email_index_path}
      else
        format.html { feedback_registra_email_index_path }
      end
      
    end

  end
  def registros_servicos_realizado_params
      params.require(:registra_email).permit(:nome)
    end
end

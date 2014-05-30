class Evento < ActiveRecord::Base
  validates :nome, :email_para_contato, :data, :descricao, presence: true
  
  scope :nao_aprovados, -> { where(aprovado: false) }
  scope :aprovados, -> { where(aprovado: true) }
  
  def aprova!
    self.aprovado = true
    self.update_attributes(:aprovado => true)
  end

  def desaprova!
    self.aprovado = false
    self.update_attributes(:aprovado => false)
  end
  
end

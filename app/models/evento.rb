class Evento < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nome, :use => [:slugged, :finders]
  
  validates :nome, :email_para_contato, :data, :descricao, presence: { message: "não pode ser vazio" }
  validates :email_para_contato, format: { with: /@/, message: "dever ser válido"}
    
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

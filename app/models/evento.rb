class Evento < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nome, :use => [:slugged, :finders]
  
  mount_uploader :logo, LogoUploader
  
  validates :nome, :email_para_contato, :data, :descricao, presence: { message: "não pode ser vazio" }
  validates :email_para_contato, format: { with: /@/, message: "dever ser válido"}
    
  scope :nao_aprovados, -> { where(aprovado: false) }
  scope :aprovados, -> { where(aprovado: true) }
  scope :aprovados_por_data, -> { where(aprovado: true).order("data ASC") }
  
  def aprova!
    self.aprovado = true
    self.update_attributes(:aprovado => true)
  end

  def desaprova!
    self.aprovado = false
    self.update_attributes(:aprovado => false)
  end
  
end

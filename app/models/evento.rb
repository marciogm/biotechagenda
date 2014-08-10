class Evento < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nome, :use => [:slugged, :finders]

  # mount_uploader :logo, LogoUploader

  belongs_to :estado
  belongs_to :cidade
  belongs_to :categoria
  has_many :confirmas

  validates :nome, :email_para_contato, :data, :descricao, :estado_id, :cidade_id, :categoria_id, presence: { message: "não pode ser vazio" }
  validates :email_para_contato, format: { with: /@/, message: "dever ser válido"}

  data = Date.today

  scope :nao_aprovados,         ->  { where(aprovado: false) }
  scope :aprovados,             ->  { where(aprovado: true) }
  scope :aprovados_por_data,    ->  { where("aprovado = ? AND ((? between data and data_terminio) OR (data >= ?))", true, Date.today, Date.today).order("data ASC")}

  def aprova!
    self.aprovado = true
    self.update_attributes(:aprovado => true)
  end

  def desaprova!
    self.aprovado = false
    self.update_attributes(:aprovado => false)
  end

  def confirma_presenca(user)
    if usuario_aprovado? user
      confirma = Confirma.create!(evento_id: self.id, user_id: user.id)
    end
  end

  def desconfirma_presenca(user)
    evento_confirmado = Confirma.where(evento_id: self.id, user_id: user.id).first
    evento_confirmado.destroy
  end

  def usuario_aprovado?(user)
    if user
      user = Confirma.where(user_id: self.id, evento_id: user.id)
      user.empty?
    end
  end
end

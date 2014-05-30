class Evento < ActiveRecord::Base
  validates :nome, :email_para_contato, :data, :descricao, presence: true
end

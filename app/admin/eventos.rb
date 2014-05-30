# app/admin/eventos.rb
ActiveAdmin.register Evento do
  
  scope :all, default: true
  scope :nao_aprovados
  scope :aprovados
  
end
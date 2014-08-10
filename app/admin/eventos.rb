# app/admin/eventos.rb
ActiveAdmin.register Evento do

  scope :all, default: true
  scope :nao_aprovados
  scope :aprovados

  index do
    column :nome
    actions
  end

  permit_params :nome, :email_para_contato, :data, :data_terminio,
  :descricao, :site, :facebook, :aprovado, :logo, :estado_id, :cidade_id, :categoria_id

  form do |f|
    f.inputs "Evento Details" do
      f.input :nome
      f.input :email_para_contato
      f.input :categoria
      f.input :data, as: :string
      f.input :data_terminio, as: :string
      f.input :estado
      f.input :cidade
      f.input :descricao
      f.input :site
      f.input :facebook
      f.input :logo
    end
    f.actions
  end

end

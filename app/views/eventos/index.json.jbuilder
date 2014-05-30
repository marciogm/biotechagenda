json.array!(@eventos) do |evento|
  json.extract! evento, :id, :nome, :email_para_contato, :data, :data_terminio, :descricao, :site, :facebook
  json.url evento_url(evento, format: :json)
end

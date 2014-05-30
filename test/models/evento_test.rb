require 'test_helper'

describe Evento do
  
  let(:evento_params) {{ nome: "Evento de Testes", email_para_contato: "contato@evento.com", 
      data: "2014-05-30", descricao: "Eventos de teste"}}
  
  let(:evento) { Evento.new evento_params}
  
  let(:eventos) { Evento.all }
  
  it "is valid with valid params" do
    evento.must_be :valid?
  end
  
  it "is invalid without an nome" do
    evento_params.delete :nome
    
    evento.wont_be :valid?
    evento.errors[:nome].must_be :present?
  end
  
  it "is invalid without an email para contato" do
    evento_params.delete :email_para_contato
    
    evento.wont_be :valid?
    evento.errors[:email_para_contato].must_be :present?
  end
  
  it "is invalid without an Data" do
    evento_params.delete :data
    
    evento.wont_be :valid?
    evento.errors[:data].must_be :present?
  end
  
  it "is invalid without an Descricao" do
    evento_params.delete :descricao
    
    evento.wont_be :valid?
    evento.errors[:descricao].must_be :present?
  end
  
end
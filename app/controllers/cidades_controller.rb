class CidadesController < ApplicationController
  
  def cidade_por_estado
    estado_id = params[:id].to_i
    cidades = Cidade.where(estado_id: estado_id)
    c = []
    cidades.each do |cidade|
      c << { id: cidade.id, nome: cidade.nome }
    end
    
    render json: { cidades: c.compact }.as_json
    
  end
  
end

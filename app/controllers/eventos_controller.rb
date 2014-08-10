class EventosController < ApplicationController
  before_action :set_project, only: [:show]

  # GET /eventos
  # GET /eventos.json
  def index
    @eventos = Evento.all
  end

  # GET /eventos/1
  # GET /eventos/1.json
  def show
    index
  end

  def cursos
    @categoria = Categoria.where(nome: "Cursos")
    @eventos = Evento.aprovados_por_data.where(categoria: @categoria)
  end

  def palestras
    @categoria = Categoria.where(nome: "Palestras")
    @eventos = Evento.aprovados_por_data.where(categoria: @categoria)
  end

  def encontros
    @categoria = Categoria.where(nome: "Encontros")
    @eventos = Evento.aprovados_por_data.where(categoria: @categoria)
  end

  def congressos
    @categoria = Categoria.where(nome: "Congressos")
    @eventos = Evento.aprovados_por_data.where(categoria: @categoria)
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
  end

  # POST /eventos
  # POST /eventos.json
  def create
    @evento = Evento.new(evento_params)

    respond_to do |format|
      if @evento.save
        format.html { redirect_to root_path, notice: 'Obrigado por divulgar este evento, assim que for aprovado, aparecerá na listagem.' }
        format.json { render :show, status: :created, location: @evento }
      else
        format.html { render :new }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  def approve
    respond_to do |format|
      evento = Evento.find_by_slug(params[:id])
      if evento.aprova!
        format.html { redirect_to admin_dashboard_path, notice: 'Evento Aprovado.' }
      end
    end
  end

  def confirma_presenca_evento
    respond_to do |format|
      evento = Evento.find_by_slug(params[:id])
      if evento.confirma_presenca(current_user)
        format.html { redirect_to evento, notice: "Você esta confirmado para o evento: #{evento.nome}" }
      else
        format.html { redirect_to evento, alert: "Erro ao confirmar presença em: #{evento.nome}"}
      end
    end
  end

  def desconfirmar_presenca_evento
    respond_to do |format|
      evento = Evento.find_by_slug(params[:id])
      if evento.desconfirma_presenca(current_user)
        format.html { redirect_to evento, alert: "Que pena, você não vai mais em: #{evento.nome}"}
      else
        format.html { redirect_to evento, alert: "Erro ao desconfirmar presença em: #{evento.nome}"}
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @evento = Evento.find_by_slug(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evento_params
      params.require(:evento).permit(:nome, :email_para_contato, :data, :data_terminio,
      :descricao, :site, :facebook, :aprovado, :logo, :estado_id, :cidade_id, :categoria_id)
    end
end

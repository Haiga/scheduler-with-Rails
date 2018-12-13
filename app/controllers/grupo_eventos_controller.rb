class GrupoEventosController < ApplicationController
  before_action :set_grupo_evento, only: [:show, :edit, :update, :destroy]

  # GET /grupo_eventos
  # GET /grupo_eventos.json
  def index
    @grupo_eventos = GrupoEvento.all
  end

  # GET /grupo_eventos/1
  # GET /grupo_eventos/1.json
  def show
  end

  # GET /grupo_eventos/new
  def new
    @grupo_evento = GrupoEvento.new
  end

  # GET /grupo_eventos/1/edit
  def edit
  end

  # POST /grupo_eventos
  # POST /grupo_eventos.json
  def create
    @grupo_evento = GrupoEvento.new(grupo_evento_params)

    respond_to do |format|
      if @grupo_evento.save
        format.html { redirect_to @grupo_evento, notice: 'Grupo evento was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_evento }
      else
        format.html { render :new }
        format.json { render json: @grupo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_eventos/1
  # PATCH/PUT /grupo_eventos/1.json
  def update
    respond_to do |format|
      if @grupo_evento.update(grupo_evento_params)
        format.html { redirect_to @grupo_evento, notice: 'Grupo evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_evento }
      else
        format.html { render :edit }
        format.json { render json: @grupo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_eventos/1
  # DELETE /grupo_eventos/1.json
  def destroy
    @grupo_evento.destroy
    respond_to do |format|
      format.html { redirect_to grupo_eventos_url, notice: 'Grupo evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_evento
      @grupo_evento = GrupoEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_evento_params
      params.require(:grupo_evento).permit(:nome, :descricao, :prioridade, :user_id)
    end
end

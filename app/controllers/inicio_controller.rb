require 'date'
class InicioController < ApplicationController
  def index
    if user_signed_in?
      @grupo_eventos = GrupoEvento.all.where(user_id: current_user.id)
      @events_day = []
      #@eventos = Evento.all
      for grupo in @grupo_eventos
        for evento in grupo.eventos
          if evento.dia == Date.today and not evento.estado
            @events_day.push(evento)
          end
        end
      end
    end
  end
end

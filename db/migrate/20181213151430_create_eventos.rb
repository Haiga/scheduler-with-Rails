class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.date :dia
      t.time :horario
      t.string :descricao
      t.integer :prioridade
      t.boolean :estado
      t.integer :grupo_evento_id

      t.timestamps
    end
  end
end

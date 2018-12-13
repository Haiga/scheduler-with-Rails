class CreateGrupoEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :grupo_eventos do |t|
      t.string :nome
      t.string :descricao
      t.string :prioridade
      t.integer :user_id

      t.timestamps
    end
  end
end

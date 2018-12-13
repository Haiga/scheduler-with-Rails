class GrupoEvento < ApplicationRecord
  has_many :eventos
  belongs_to :user
end

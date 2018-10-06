class Programa < ApplicationRecord
  belongs_to :universidad
  belongs_to :sede
  belongs_to :nucleos_basicos_conocimiento
  belongs_to :nivel
  belongs_to :modalidad
  belongs_to :jornada
end

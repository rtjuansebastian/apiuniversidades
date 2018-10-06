class ProgramaSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :codigo_snies, :costos, :numero_semestres, :correo_contacto
  has_one :universidad
  has_one :sede
  has_one :nucleos_basicos_conocimiento
  has_one :nivel
  has_one :modalidad
  has_one :jornada
end

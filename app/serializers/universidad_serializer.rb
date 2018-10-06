class UniversidadSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :acreditacion_institucional, :direccion, :logo
  has_one :ciudad
  has_one :caracter
end

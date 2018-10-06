class CiudadSerializer < ActiveModel::Serializer
  attributes :id, :nombre
  has_one :departamento
end

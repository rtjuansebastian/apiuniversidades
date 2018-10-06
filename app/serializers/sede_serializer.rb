class SedeSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :direccion
  has_one :universidad
  has_one :ciudad
end

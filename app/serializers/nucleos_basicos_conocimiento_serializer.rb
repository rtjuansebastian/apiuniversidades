class NucleosBasicosConocimientoSerializer < ActiveModel::Serializer
  attributes :id, :nucleo_basico_conocimiento
  has_one :areas_conocimiento
end

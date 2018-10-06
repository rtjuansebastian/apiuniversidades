class Sede < ApplicationRecord
  belongs_to :universidad
  belongs_to :ciudad
end

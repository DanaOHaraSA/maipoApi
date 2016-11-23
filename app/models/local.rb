class Local < ApplicationRecord
  belongs_to :usuario_a
  has_many :sala
end

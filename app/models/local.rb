class Local < ApplicationRecord
  belongs_to :usuario_a
  has_many :sala

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  
end

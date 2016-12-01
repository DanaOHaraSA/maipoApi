class Sala < ApplicationRecord
  belongs_to :local
  has_many :solicitud
  has_attached_file :foto, styles: { small: "64x64", med: "100x100", large: "200x200"}
end

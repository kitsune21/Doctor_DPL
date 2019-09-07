class Doctor < ApplicationRecord
  belongs_to :speciality
  has_many :patients, through: :appointments
end

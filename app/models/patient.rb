class Patient < ApplicationRecord
  has_many :appointsments
  has_many :doctors, through: :appointments
  belongs_to :city
end

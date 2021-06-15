class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :on_calls
  has_many :patients, through: :on_calls

  # def self.education
  #   Doctor.select('distinct(education)')  
  # end
end

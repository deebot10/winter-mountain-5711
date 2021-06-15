class Patient < ApplicationRecord
  has_many :on_calls 
  has_many :doctors, through: :on_calls   
end
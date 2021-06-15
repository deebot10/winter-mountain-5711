require 'rails_helper'

RSpec.describe 'Hospital Show Page' do
  before(:each) do 
    @hospital = Hospital.create!(name: 'Seattle Grace')
    
    @doctor_1 = @hospital.doctors.create!(name: 'J.D Dorian', specialty: 'General', university: 'Phoniex Online')
    @doctor_2 = @hospital.doctors.create!(name: 'Gregory House', specialty: 'Eyes', university: 'Phoniex Online')
    @doctor_3 = @hospital.doctors.create!(name: 'Dee', specialty: 'Surgeon', university: 'Phoniex Online')

    @patient_1 = @doctor_1.patients.create!(name: 'Kyle Lowry', age: 33)
    @patient_2 = @doctor_2.patients.create!(name: 'Zack Levine', age: 25)
    @patient_3 = @doctor_3.patients.create!(name: 'Charles Barkly', age: 42)

    visit hospital_path(@hospital)
  end    

  
end
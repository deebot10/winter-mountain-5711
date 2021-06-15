require 'rails_helper'

RSpec.describe 'Doctor show' do
  before(:each) do
    @hospital = Hospital.create!(name: 'Seattle Grace')
    
    @doctor = @hospital.doctor.create!(name: 'J.D Dorian', specialty: 'General', education: 'Phoniex Online')

    @patient_1 = @doctor.patient.create!(name: 'Kyle Lowry', age: 33)
    @patient_2 = @doctor.patient.create!(name: 'Zack Levine', age: 25)
    @patient_3 = @doctor.patient.create!(name: 'Charles Barkly', age: 42)

    
  end    
    # User Story 1, Doctors Show Page
    # ​
    # As a visitor
    # When I visit a doctor's show page
    # I see all of that doctor's information including:
    # - name
    # - specialty
    # - university where they got their doctorate
    # And I see the name of the hospital where this doctor works
    # And I see the names of all of the patients this doctor has
  it '' do
  end
end
require 'rails_helper'

RSpec.describe 'Doctor show' do
  before(:each) do
    @hospital = Hospital.create!(name: 'Seattle Grace')
    
    @doctor = @hospital.doctors.create!(name: 'J.D Dorian', specialty: 'General', university: 'Phoniex Online')

    @patient_1 = @doctor.patients.create!(name: 'Kyle Lowry', age: 33)
    @patient_2 = @doctor.patients.create!(name: 'Zack Levine', age: 25)
    @patient_3 = @doctor.patients.create!(name: 'Charles Barkly', age: 42)

    visit doctor_path(@doctor)
  end    
    # User Story 1, Doctors Show Page
  it 'shows the doctor with attributes' do
    expect(page).to have_content(@doctor.name)  
    expect(page).to have_content(@doctor.specialty)  
    expect(page).to have_content(@doctor.university)  
  end

  it 'shows the doctors place of work and patient names' do
    expect(page).to have_content(@hospital.name)
    expect(page).to have_content(@patient_1.name)    
    expect(page).to have_content(@patient_2.name)    
    expect(page).to have_content(@patient_3.name)    
  end
end
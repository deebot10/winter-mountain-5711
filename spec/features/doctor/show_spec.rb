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

    #   User Story 3, Remove a Patient from a Doctor
    # ​
    # As a visitor
    # When I visit a Doctor's show page
    # Next to each patient's name, I see a button to remove that patient from that doctor's caseload
    # When I click that button for one patient
    # I'm brought back to the Doctor's show page
    # And I no longer see that patient's name listed

    # NOTE: the patient record should not be deleted entirely
  it 'has a button to delete patients' do 

    expect(page).to have_content("Remove #{@patient_1.name}")
    
    click_link "Remove #{@patient_1.name}"

    expect(current_path).to eq(doctor_path(@doctor))
    expect(page).to_not have_content(@patient_1.name)
  end  
end
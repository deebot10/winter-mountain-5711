require 'rails_helper'

RSpec.describe Doctor do
  describe 'relationships' do
    it { should belong_to(:hospital) }
    it { should have_many(:on_call) }
    it { should have_many(:patients).through(:on_call) }
  end
end

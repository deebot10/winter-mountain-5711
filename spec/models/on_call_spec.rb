require 'rails_helper'

RSpec.describe OnCall do
  describe 'relationships' do
    it { should belong_to(:patient) }
    it { should belong_to(:doctor) }
  end
end
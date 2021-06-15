require 'rails_helper'

RSpec.describe Patient do
  describe 'relationships' do
    it { should have_many(:on_call) }
    it { should have_many(:doctors).through(:on_call) }
  end
end
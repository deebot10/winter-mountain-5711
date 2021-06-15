require 'rails_helper'

RSpec.describe Patient do
  describe 'relationships' do
    it { should have_many(:on_calls) }
    it { should have_many(:doctors).through(:on_calls) }
  end
end
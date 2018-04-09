require './app.rb'
require 'capybara/rspec'
require './lib/randomise.rb'

describe Randomise do

  describe '#roll' do
    it 'rolls 0' do
      allow(Kernel).to receive(:rand).with(0..2).and_return(0)
      expect(subject.roll).to eq(0)
    end
  end
end

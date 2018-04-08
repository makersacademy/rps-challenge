require './app.rb'
require 'capybara/rspec'
require './lib/roshambo.rb'

describe Roshambo do

  it 'initialises to take a user input' do
    newgame = Roshambo.new("Rock")
    expect(newgame.input).to eq("Rock")
  end

  describe '#roll' do
    it 'rolls to Rock' do
      newgame = Roshambo.new("dummy")
      allow(Kernel).to receive(:rand).with(0..2).and_return(0)
      expect(newgame.roll).to eq("Rock")
    end

    it 'rolls to Paper' do
      newgame = Roshambo.new("dummy")
      allow(Kernel).to receive(:rand).with(0..2).and_return(1)
      expect(newgame.roll).to eq("Paper")
    end

    it 'rolls to Scissors' do
      newgame = Roshambo.new("dummy")
      allow(Kernel).to receive(:rand).with(0..2).and_return(2)
      expect(newgame.roll).to eq("Scissors")
    end
  end

end

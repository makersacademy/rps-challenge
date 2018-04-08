require './app.rb'
require 'capybara/rspec'
require './lib/roshambo.rb'

describe Roshambo do

  it 'initialises to take a user input' do
    newgame = Roshambo.new("Rock")
    expect(newgame.input).to eq("Rock")
  end

  # describe '#randomiser' do
  #   it 'randomises between 3 things in an array' do
  #
  #
  # end

end

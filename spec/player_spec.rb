require 'spec_helper'
require 'player'

describe Player do

  subject(:player) {Player.new("Alfie")}

  it 'should return its name' do
    expect(subject.name).to eq "Alfie"
  end

  it 'should return an error message if a weapon not on the list is picked' do
    expect{subject.pick_weapon("water")}.to raise_error("This weapon is not available")
  end

  it 'should allow you pick a weapon' do
    subject.pick_weapon("rock")
    expect(subject.weapon).to eq :rock
  end

end

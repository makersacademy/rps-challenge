require 'spec_helper'
require 'player'

describe Player do

  # subject { Player.new('Salman') }
  # 
  # it 'can enter a name' do
  #   expect(subject).to respond_to(:name)
  # end

  it 'has a set of weapons to choose from' do
    expect(subject).to respond_to(:weapons)
  end

  it 'can select a weapon' do
    subject.select_weapon(:rock)
    expect(subject.selected_weapon).to eq(:rock)
  end

  it 'returns an error if valid weapon is not selected' do
    expect{subject.select_weapon(:abc)}.to raise_error 'please select a valid weapon'
  end
end

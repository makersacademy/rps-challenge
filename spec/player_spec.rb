require './lib/player'
require_relative 'web_helper'

describe Player do

  subject { Player.new('Alfonso') }

  it 'works' do
    expect(subject.class).to eq described_class
  end

  it 'stores players name' do
    expect(subject.name).to eq 'Alfonso'
  end

  it 'stores players choice' do
    register_submit_rock
    expect(subject.choice).to eq 'rock'
  end

end

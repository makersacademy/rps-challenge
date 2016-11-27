require 'spec_helper'

feature Player do
  subject(:player) { described_class.new('Player')}
  subject(:computer) { described_class.new('Computer')}

  before(:each) do
    sign_in
  end

  scenario 'Stores player\'s name and returns it' do
    expect(player.name).to eq 'Player'
  end

  scenario 'Stores computer\'s name and returns it' do
    visit '/result'
    expect(computer.name).to eq 'Computer'
  end

  scenario 'Returns player\'s weapon of choice' do
    player.choice(:paper)
    expect(player.selection).to eq :paper
  end

  scenario 'Returns a random selection from computer' do
    allow(computer).to receive(:computer_choice).and_return('Rock')
    expect(computer.random_options).to eq 'Rock'
  end
end

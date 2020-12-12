require 'game'

describe Game do
  subject { Game.new("rock") }

  it 'takes in user choice' do
    expect(subject.player_choice).to eq :rock
  end

  it 'gives a random choice' do
    allow(subject).to receive(:generate_random).and_return :scissors
    expect(subject.computer_choice).to eq :scissors
    p subject.generate_random    
  end
end
require 'game' 

describe Game do
  let(:rock_player) { double('Player', choice: :rock) }
  let(:scissors_player) { double('Player', choice: :scissors) }
 

  context 'new' do
    it 'has 2 players' do
      subject = described_class.new(rock_player, scissors_player)
      expect(subject.players.length).to eq 2
    end
  end

  it 'can declare a winner' do
    subject = described_class.new(rock_player, scissors_player)
    subject.fight
    expect(subject.winner).to eq rock_player 
  end
 
  it 'can declare a draw' do
    subject = described_class.new(rock_player, rock_player)
    subject.fight
    expect(subject.winner).to eq :draw 
  end
end

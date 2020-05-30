require 'play_game'

describe PlayGame do
  let(:subject) {described_class.new('Paper')}
  let(:rock) {allow(PlayGame::RPSARRAY).to receive(:sample).and_return('Rock')}
  let(:scissors) {allow(PlayGame::RPSARRAY).to receive(:sample).and_return('Scissors')}


  it 'Should have a PlayGame class' do
    expect(PlayGame).to respond_to(:new)
  end

  it 'Should have an array of rock, paper, scissors' do
    expect(PlayGame::RPSARRAY).to eq(['Rock', 'Paper', 'Scissors']) 
  end

  it 'Should accept the player choice as an argument' do 
    expect(subject.player_choice).to eq('Paper')
  end

  it 'Should pick a random choice on initialization' do
    rock    
    expect(subject.computer_choice).to eq('Rock')
  end
  
  describe '#play' do
    it 'should have a play method' do
      expect(subject).to respond_to(:play)
    end

    it 'Should return true when the player wins' do
      rock
      expect(subject.play).to eq(true)
    end

    it 'Should return false when the player loses' do
      scissors
      expect(subject.play).to eq(false)
    end
  end
end
require 'game'

describe Game do

  let(:player){ double :player }
  let(:player_name){ double :player_name }
  let(:computer){ double :computer }
  let(:choice){ double :choice }
  let(:rock){ double :rock }
  subject{ described_class.new(player_name, player, computer)}


  before do

    allow(player).to receive(:new).with(player_name).and_return(player)
    allow(player).to receive(:choose).with(choice).and_return(choice)
    allow(player).to receive(:name).and_return(player_name)
    allow(computer).to receive(:new).and_return(computer)
    allow(computer).to receive(:choose).and_return(rock)
    allow(computer).to receive(:name).and_return("computer")

  end

  it 'Should return player' do
    expect(subject.player).to eq player
  end


  it 'Should return computer' do
    expect(subject.computer).to eq computer
  end

  describe '#player_turn' do
    it 'Should return the choice' do
      expect(subject.player_turn(choice)).to eq choice
    end
  end

  describe '#computer_turn' do
    it 'Should return randen rps from computer' do
      expect(subject.computer_turn).to eq rock
    end
  end

  describe '#winner' do
    it 'Should return who win' do
      expect(subject.winner("rock", "paper")).to eq 'computer WIN!'
    end
  end

end

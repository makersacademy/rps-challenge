require 'game'

describe Game do
  let(:name) { double :James }
  let(:player_selection) { double :scissors }
  #let(:computer_selection) { double :paper }
  subject { described_class.new(name)}


  describe '#player_selection' do
    it 'returns the players selection' do
      expect(subject.player_selection(:scissors)).to eq(:scissors)
    end
  end
  let(:computer_selection) { double :paper }
  describe '#computer_selection' do
    it 'returns the computers selection' do
      #subject.computer_selection
      expect(subject.computer_selection).to eq(:paper)
    end
  end

  describe 'player wins' do
    let(:computer_selection) { double :paper }
      it 'confirms player as the winner' do
        subject.computer_selection
        subject.player_selection(:rock)
        expect(subject.result).to eq('Win')
        end
    end
end

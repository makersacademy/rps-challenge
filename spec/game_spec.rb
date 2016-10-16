require 'game'
require 'player'
require 'weapon'

describe Game do
  let(:player_1) { double(name: :player_1) }
  let(:player_2) { double(name: :player_2)}
  subject { described_class.new(player_1, player_2) }

  describe '#initialize' do
  	it 'it knows the player' do
  		expect(subject.player_1).to eq player_1
  	end
    it 'it knows the computer (player 2)' do
      expect(subject.player_2).to eq player_2
    end
  end

end

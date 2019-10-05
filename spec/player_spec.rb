require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new("Duncan") }
  let(:duncan) { double "Duncan" }


  describe '#initialize' do
    it 'gives player a name' do
      expect(player.name).to eq "Duncan"
    end
  end

  # describe '#player_move' do
  #   it 'player chooses rock' do
  #     expect(player.move("Rock")).to eq "Rock"
  #   end
  #
  #   it 'player chooses paper' do
  #     expect(player.move("Paper")).to eq "Paper"
  #   end
  #
  #   it 'player chooses scissors' do
  #     expect(player.move('Scissors')).to eq "Scissors"
  #   end
  # end
end

require 'game'

describe Game do
  let(:robo) { double(:player, :choice => 'Rock') }
  subject(:game) { described_class.new(robo) }

  describe '.player' do
    it 'returns the player' do
      expect(game.player).to eq robo
    end
  end

  describe '.computer_choice' do
    context 'srand(1) should be second selection' do
      it "returns a random choice of R, P or S" do
        srand(1)
        expect(game.computer_choice).to eq 'Paper'
      end
    end

    context 'srand(2) should be first selection' do
      it "returns a random choice of R, P or S" do
        srand(2)
        expect(game.computer_choice).to eq 'Rock'
      end
    end
  end

  describe '.outcome' do
    it 'returns winner if player has won' do
    end
  end

  # describe '.result' do
  #   it "creates a hash of the players choice and the computers choice" do
  #     srand(1)
  #     expect(game.result).to eq({ 'Rock' => 'Paper' })
  #   end
  # end
  #
  # describe '.winner?' do
  #   it 'returns true if player has won' do
  #     srand(3)
  #     expect(game).to be_winner
  #   end
  #   it 'returns false if player has lost' do
  #     srand(1)
  #     expect(game).not_to be_winner
  #   end
  # end
  #
  # describe '.draw?' do
  #   it "returns true if it's a draw" do
  #     srand(2)
  #     expect(game).to be_draw
  #   end
  #   it "returns false if it's not a draw" do
  #     srand(1)
  #     expect(game).not_to be_draw
  #   end
  # end
end

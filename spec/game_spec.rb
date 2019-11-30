require 'game'

describe Game do
  let(:player) { double :player }
  subject(:game) { Game.new(player)}

  describe '#generate_move' do
    it "should return either rock, paper or scissors" do
      srand(2)
      expect(game.generate_move).to eq 'Rock'
    end
  end

  # describe '#outcome' do
  #   it "should return a win or loss depending on what was picked" do
  #     allow(game).to receive(:move) { 'Scissors' }
  #     allow(player).to receive(:show_choice) { 'Paper' }
  #     expect(game.outcome).to eq 'You lose!'
  #   end
  # end

end

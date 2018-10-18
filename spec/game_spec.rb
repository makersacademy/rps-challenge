require "game"

describe Game do
  let(:player_one) { double(:player_one, choice: "Rock", :has_chosen? => false) }
  let(:player_two) { double(:player_two, choice: "Scissors", :has_chosen? => false) }
  let(:game) { Game.new(player_one, player_two) }

  describe '#result' do
    it 'returns winning player' do
      expect(game.result).to eq player_one
    end

    it 'returns "tie" if no winner' do
      allow(player_two).to receive(:choice).and_return("Rock")
      expect(game.result).to eq "tie"
    end
  end

  describe '#chooser' do
    it 'returns player_one before choice' do
      expect(game.chooser).to eq(player_one)
    end
    it 'returns player_two after player_one has chosen' do
      allow(player_one).to receive(:has_chosen?).and_return(true)
      expect(game.chooser).to eq(player_two)
    end
  end

  describe '#complete?' do
    it 'returns false initially' do
      expect(game).not_to be_complete
    end
    it 'returns false if only one player has chosen' do
      allow(player_one).to receive(:has_chosen?).and_return(true)
      expect(game).not_to be_complete
    end
    it 'returns true after both players have chosen' do
      allow(player_one).to receive(:has_chosen?).and_return(true)
      allow(player_two).to receive(:has_chosen?).and_return(true)
      expect(game).to be_complete
    end
  end

  describe '#reset_choices' do
    it 'resets choices of both players' do
      expect(player_one).to receive(:reset_choice)
      expect(player_two).to receive(:reset_choice)
      game.reset_choices
    end
  end

end

require 'game'

describe Game do
  subject(:game) { described_class.new(args) }
  let(:args) {
    { "player_name" => "Steve", "player_item" => :rock, "computer_item" => :rock }
  }

  describe '#player_name' do
    it 'returns payer name' do
      expect(game.player_name).to eq 'Steve'
    end
  end

  describe '#player_item' do
    it 'returns player item' do
      expect(game.player_item).to eq :rock
    end
  end

  describe '#computer_item' do
    it 'returns computer item' do
      expect(game.computer_item).to eq :rock
    end
  end

  context 'end of the game' do
    subject(:draw_game) { game }
    subject(:win_game) { described_class.new(win_args) }
    subject(:lose_game) { described_class.new(lose_args) }

    let(:win_args) {
      {"player_name" => "Steve", "player_item" => :rock, "computer_item" => :scissors}
    }
    let(:lose_args) {
      {"player_item" => :rock, "computer_item" => :paper}
    }

    describe "#draw?" do
      it 'returns true when player_item is :rock and computer_item is :rock' do
        expect(draw_game.draw?).to eq true
      end
    end

    describe "#win?" do
      it 'returns true when player_item is :rock and computer_item is :scissors' do
        expect(win_game.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true when player_item is :rock and computer_item is :paper' do
        expect(lose_game.lose?).to eq true
      end
    end

      describe '#win?' do
        it 'returns true when player_item is :rock and computer_item is :lizard' do
          expect(win_game.win?).to eq true
        end
      end

        describe '#lose?' do
          it 'returns true when player_item is :rock and computer_item is :spock' do
            expect(lose_game.lose?).to eq true
          end
        end

    









  end


end

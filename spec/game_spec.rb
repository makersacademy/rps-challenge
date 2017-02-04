require 'game'

describe Game do
    subject(:game) { described_class.new(player_1, player_2)}
    let(:player_1) { double(:player_1) }
    let(:player_2) { double(:player_2) }

    context "@player" do

      it 'test that when player_1 is called player_1 is returned' do
        expect(game.player_1).to eq player_1
      end

      it 'test that when player_2 is called player_2 is returned' do
        expect(game.player_2).to eq player_2
      end
    end

    context ".choice" do

      it 'tests that an array consisting of the users and computer\'s selection is returned' do
        allow(player_1).to receive(:users_choice){ :Rock }
        allow(player_2).to receive(:users_choice) {:Scissors}
        game.choice
        expect(game.choices).to include([:Rock, :Scissors])
      end
    end
end

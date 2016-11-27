require 'game'

describe Game do
    subject(:game) { described_class.new(player)}
    let(:player) { double(:player) }
    # let(:computer) { double(:computer) }

    context ".player" do

      it 'test that when player is called player is returned' do
        expect(game.player).to eq player
      end
    end

    context ".computer" do

      it 'test that computer is initalized with game' do
        expect(game.computer).to be_kind_of Computer
      end
    end

    context ".choice" do

      it 'tests that an array consisting of the users and computer\'s selection is returned' do
        allow(player).to receive(:users_choice){ "Rock" }
        allow(game).to receive(:computer_selection) {"Scissors"}
        game.choice
        expect(game.choices).to include(["Rock", "Scissors"])
      end
    end
end

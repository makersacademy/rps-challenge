require 'game'

describe Game do
    subject(:game) { described_class.new(player)}
    let(:player) { double(:player) }

    context "@player" do

      it 'test that when player is called player is returned' do
        expect(game.player).to eq player
      end
    end

    context "@computer" do

      it 'test that a new instance of computer is created' do
        expect(game.computer).to be_kind_of Computer
      end
    end

    context ".choice" do

      it 'tests that an array consisting of the users and computer\'s selection is returned' do
        allow(player).to receive(:users_choice){ :Rock }
        allow(game).to receive(:computer_selection) {:Scissors}
        game.choice
        expect(game.choices).to include([:Rock, :Scissors])
      end
    end

    context "@result" do

      it 'tests a new instance of result is created' do
        expect(game.result).to be_kind_of Result
      end
    end

    context ".final_result" do

      it 'tests that the result of the RPS is returned' do
        allow(player).to receive(:users_choice){ :Rock }
        allow(game).to receive(:computer_selection) {:Scissors}
        game.choice
        expect(game.final_result).to eq :win
      end
    end 
end

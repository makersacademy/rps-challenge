require 'choice_manager'

describe ChoiceManager do

  subject(:machine_game){ described_class.new(player1,machine) }
  subject(:human_game){ described_class.new(player1,player2) }

  let(:player1){ double(:player, choice: nil, :choice= => nil ) }
  let(:player2){ double(:player, choice: nil, :choice= => nil ) }
  let(:machine){ double(:machine, choice: nil, choose: nil ) }
  let(:interpreter){ double(:interpreter) }

    context '#initialize' do
      it 'stores a player, who can be returned' do
        expect(machine_game.player1).to eq player1
      end
      it 'stores a machine, who can be returned' do
        expect(machine_game.player2).to eq machine
      end
      it 'or stores a second human, who can be returned' do
        expect(human_game.player2).to eq player2
      end
      it 'starts with player1 as the current player and player2 as the opponent' do
        expect(machine_game.current_player).to eq player1
        expect(machine_game.opponent).to eq machine
      end
    end

    describe 'setting choices' do
      context '#set_choice' do
        it 'sends the choice to the current player' do
          expect(player1).to receive(:choice=).with('rock')
          machine_game.set_choice('rock')
        end
      end
      context '#set_random_choice' do
        it 'gets the opponent to make a choice' do
          expect(machine).to receive(:choose)
          machine_game.set_random_choice
        end
      end
    end

    context '#result' do
      it 'works out that paper beats rock and sends the result to the interpreter' do
        allow(player1).to receive(:choice){ 'ROCK' }
        allow(machine).to receive(:choice){ 'PAPER' }
        expect(interpreter).to receive(:print).with(machine)
        machine_game.result(interpreter)
      end
      it 'works out that rock beats scissors and sends the result to the interpreter' do
        allow(player1).to receive(:choice){ 'ROCK' }
        allow(machine).to receive(:choice){ 'SCISSORS' }
        expect(interpreter).to receive(:print).with(player1)
        machine_game.result(interpreter)
      end
      it 'works out that scissors beat paper and sends the result to the interpreter' do
        allow(player1).to receive(:choice){ 'PAPER' }
        allow(machine).to receive(:choice){ 'SCISSORS' }
        expect(interpreter).to receive(:print).with(machine)
        machine_game.result(interpreter)
      end
      it 'knows what a draw is and sends the result to the interpreter' do
        allow(player1).to receive(:choice){ 'PAPER' }
        allow(machine).to receive(:choice){ 'PAPER' }
        expect(interpreter).to receive(:print).with(:draw)
        machine_game.result(interpreter)
      end
    end

    context '#finished?' do
      it 'returns false if either player has no choice set' do
        allow(player1).to receive(:choice){ 'PAPER' }
        expect(machine_game).not_to be_finished
      end
      it 'returns true if both players have a choice set' do
        allow(player1).to receive(:choice){ 'PAPER' }
        allow(player2).to receive(:choice){ 'PAPER' }
        expect(human_game).to be_finished
      end
      it 'returns false if neither player has a choice set' do
        expect(human_game).not_to be_finished
      end
    end

    context '#swap_players' do
      it 'makes the current player the opponent and vice versa' do
        human_game.swap_players
        expect(human_game.current_player).to eq player2
        expect(human_game.opponent).to eq player1
      end
    end

    context '#clear' do
      it 'clears player1 and player2 choices' do
        expect(player1).to receive(:clear)
        expect(machine).to receive(:clear)
        machine_game.clear
      end
    end

end
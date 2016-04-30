require 'choice_manager'

describe ChoiceManager do

  subject(:choice_manager){ described_class.new(player,machine) }
  let(:player){ double(:player, :choice= => nil ) }
  let(:machine){ double(:machine, choose: nil ) }
  let(:interpreter){ double(:interpreter) }

    context '#initialize' do
      it 'stores a player, who can be returned' do
        expect(choice_manager.player).to eq player
      end
      it 'stores a machine, who can be returned' do
        expect(choice_manager.machine).to eq machine
      end
    end

    context '#set_choices' do
      it 'sends the choice to the player' do
        expect(player).to receive(:choice=).with('rock')
        choice_manager.set_choices('rock')
      end
      it 'instructs a machine to make a choice' do
        expect(machine).to receive(:choose)
        choice_manager.set_choices('rock')
      end
    end

    context '#result' do
      it 'works out that paper beats rock and sends the result to the interpreter' do
        allow(player).to receive(:choice){ 'ROCK' }
        allow(machine).to receive(:choice){ 'PAPER' }
        expect(interpreter).to receive(:print).with(:machine)
        choice_manager.result(interpreter)
      end
      it 'works out that rock beats scissors and sends the result to the interpreter' do
        allow(player).to receive(:choice){ 'ROCK' }
        allow(machine).to receive(:choice){ 'SCISSORS' }
        expect(interpreter).to receive(:print).with(:player)
        choice_manager.result(interpreter)
      end
      it 'works out that scissors beat paper and sends the result to the interpreter' do
        allow(player).to receive(:choice){ 'PAPER' }
        allow(machine).to receive(:choice){ 'SCISSORS' }
        expect(interpreter).to receive(:print).with(:machine)
        choice_manager.result(interpreter)
      end
      it 'knows what a draw is and sends the result to the interpreter' do
        allow(player).to receive(:choice){ 'PAPER' }
        allow(machine).to receive(:choice){ 'PAPER' }
        expect(interpreter).to receive(:print).with(:draw)
        choice_manager.result(interpreter)
      end
    end

end
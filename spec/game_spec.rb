require 'game'

describe 'Game' do
  subject(:game){ Game.new }
  context '#initialize' do
    it 'has an array of options' do
      expect(game.choices).to eq ([:rock, :paper, :scissors])
    end
  end
  context '#set_player_choice' do
    it 'sets the player\'s choice' do
      game.set_player_choice(:choice)
      expect(game.player_choice).to eq (:choice)
    end
  end
  context '#player_choice' do
    it 'is nil if @player_choice has not been set' do
      expect(game.player_choice).to be_nil
    end
  end
  context '#set_player_name' do
    it 'sets the player\'s name' do
      game.set_player_name(:name)
      expect(game.player_name).to eq (:name)
    end
  end
  context '#winner' do
    it 'is nil if @player_choice is nil' do
      expect(game.winner).to be_nil
    end
    context 'computer wins' do
      it 'when player chooses rock, computer chooses paper' do
        allow(Kernel).to receive(:rand) { 0.665 }
        game.set_player_choice(:rock)
        expect(game.winner).to eq ('Computer')
      end
      it 'when player chooses paper, computer chooses scissors' do
        allow(Kernel).to receive(:rand) { 0.999 }
        game.set_player_choice(:paper)
        expect(game.winner).to eq ('Computer')
      end
      it 'when player chooses scissors, computer chooses rock' do
        allow(Kernel).to receive(:rand) { 0.332 }
        game.set_player_choice(:scissors)
        expect(game.winner).to eq ('Computer')
      end
    end
    context 'player wins' do
      before :each do
        game.set_player_name(:name)
      end
      it 'when computer chooses rock, player chooses paper' do
        allow(Kernel).to receive(:rand) { 0.332 }
        game.set_player_choice(:paper)
        expect(game.winner).to eq (:name)
      end
      it 'when computer chooses paper, player chooses scissors' do
        allow(Kernel).to receive(:rand) { 0.665 }
        game.set_player_choice(:scissors)
        expect(game.winner).to eq (:name)
      end
      it 'when computer chooses scissors, player chooses rock' do
        allow(Kernel).to receive(:rand) { 0.999 }
        game.set_player_choice(:rock)
        expect(game.winner).to eq (:name)
      end

    end

  end

end

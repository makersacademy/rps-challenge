require 'game'

describe Game do 
  subject(:game) { described_class.new(player)}
  let(:player) { double :player }
  let(:rock) { "Rock"}

  it 'It returns the player' do
    expect(game.players).to eq player
  end



  context 'Player Picks Rock' do
    it 'returns the CPU choice as Rock' do
      allow(game).to receive(:pick_cpu_hand).and_return(rock)
      expect(game.pick_cpu_hand).to eq rock
    end

    it 'returns the result after a game is complete' do
      allow(game).to receive(:pick_cpu_hand).and_return("Rock")
      allow(game).to receive(:cpu_hand).and_return("Rock")
      allow(player).to receive(:choice).and_return("Rock")
      game.pick_cpu_hand
      expect(game.result).to eq 'a Draw. You both picked Rock.'
    end

    it 'CPU picks Paper' do
      allow(game).to receive(:pick_cpu_hand).and_return("Paper")
      allow(game).to receive(:cpu_hand).and_return("Paper")
      allow(player).to receive(:choice).and_return("Rock")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Loss! Paper beats Rock.'
    end

    it 'CPU picks Scissors' do
      allow(game).to receive(:pick_cpu_hand).and_return("Scissors")
      allow(game).to receive(:cpu_hand).and_return("Scissors")
      allow(player).to receive(:choice).and_return("Rock")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Win! Rock beats Scissors.'
    end
  end

  context 'Player Picks Paper' do
    it 'CPU picks Rock' do
      allow(game).to receive(:pick_cpu_hand).and_return("Rock")
      allow(game).to receive(:cpu_hand).and_return("Rock")
      allow(player).to receive(:choice).and_return("Paper")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Win! Paper beats Rock.'
    end

    it 'CPU picks Scissors' do
      allow(game).to receive(:pick_cpu_hand).and_return("Scissors")
      allow(game).to receive(:cpu_hand).and_return("Scissors")
      allow(player).to receive(:choice).and_return("Paper")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Loss! Scissors beats Paper.'
    end

    it 'CPU picks Paper' do
      allow(game).to receive(:pick_cpu_hand).and_return("Paper")
      allow(game).to receive(:cpu_hand).and_return("Paper")
      allow(player).to receive(:choice).and_return("Paper")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Draw. You both picked Paper.'
    end
  end

  context 'Player Picks Scissors' do
    it 'CPU picks Paper' do
      allow(game).to receive(:pick_cpu_hand).and_return("Paper")
      allow(game).to receive(:cpu_hand).and_return("Paper")
      allow(player).to receive(:choice).and_return("Scissors")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Win! Scissors beats Paper.'
    end

    it 'CPU picks Rock' do
      allow(game).to receive(:pick_cpu_hand).and_return("Rock")
      allow(game).to receive(:cpu_hand).and_return("Rock")
      allow(player).to receive(:choice).and_return("Scissors")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Loss! Rock beats Scissors.'
    end

    it 'CPU picks Scissors' do
      allow(game).to receive(:pick_cpu_hand).and_return("Scissors")
      allow(game).to receive(:cpu_hand).and_return("Scissors")
      allow(player).to receive(:choice).and_return("Scissors")
      game.pick_cpu_hand
      game.pick_cpu_hand
      expect(game.result).to eq 'a Draw. You both picked Scissors.'
    end

  end
end



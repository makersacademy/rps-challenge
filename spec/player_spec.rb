require 'player'

describe Player do

  subject(:player) { described_class.new("sarah") }

    describe 'initialize' do
      it 'returns the players name' do
        expect(player.name).to eq "sarah"
      end
    end

    describe 'rps options' do

      it 'player chooses rock, paper or scissors as an option' do
      player1.play_options = :rock
      expect(player.play_options).to eq(:rock)
      end

      it 'computer randomly selects from the play options array' do
        expect(Game::PLAY_OPTIONS).to receive(:sample)
        @computer.play_options
      end

      it 'computer randomly returns one of the play options'
        play_options = Game::PLAY_OPTIONS.sample
        expect(computer).play_options.to eq weapon
      end 

    end

end

require 'game'

describe Game do

  # let(:player) { double :player }
  subject(:game) { Game.new player }
  let(:player) { double :player, choice: '' }

  describe '#computer_choice' do
    it 'allows the computer to give random guess/choice' do
      allow(game).to receive(:computer_choice).and_return "rock"
      expect(game.computer_choice).to eq "rock"
    end

  end

  describe '#result' do

    it 'raises error if none of the 3 options are selected' do
      player = double :player, choice: ""
      expect { subject.result player }.to raise_error 'Please choose one of the options: rock, scissors or paper'
    end

    let(:player) { double :player, choice: 'rock' }

    it 'allows player to win if he plays rock and computer plays scissors' do
      allow(game).to receive(:computer_choice).and_return "scissors"
      expect(game.result player).to eq "You win!"
    end

    it 'allows player to draw if he plays rock and computer plays rock' do
      allow(game).to receive(:computer_choice).and_return "rock"
      expect(game.result player).to eq "Draw!"
    end

    it 'allows player to loose if he plays rock and computer plays paper' do
      allow(game).to receive(:computer_choice).and_return "paper"
      expect(game.result player).to eq "You lost, sorry!"
    end

  end

end

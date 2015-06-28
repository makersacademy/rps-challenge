require 'game'

describe Game do

  let(:player) { double :player }
  # let(:game) { Game.new player }
  subject(:game) { Game.new player }

  it 'has 3 options to choose from' do
    expect(game.selection).to eq ["rock", "paper", "scissors" ]
  end

  describe '#computer_choice' do
  # stubbing for random comp generated guess - DO YOU NEED TO STUB HERE? Are you actually testing the right thing here?
    it 'allows the computer to give random guess/choice' do
      allow(game).to receive(:computer_choice).and_return "Rock"
      expect(game.computer_choice).to eq "Rock"
    end

  end

  describe 'win_loose_draw' do

    let(:player) do
      double :player, choice: 'Rock'
    end

    it 'allows player to draw if he plays Rock and computer plays Rock' do
      allow(game).to receive(:computer_choice).and_return "Rock"
      expect(game.win_loose_draw player.choice).to eq "Draw!"
    end
    #
    # it 'allows player to win if he plays Rock and computer plays Scissors' do
    #   allow(game).to receive(:computer_choice).and_return "Scissors"
    #   expect(game.win_loose_draw player.user_choice).to eq "You win!"
    # end
    #
    # it 'allows player to loose if he plays Rock and computer plays Paper' do
    #   allow(game).to receive(:computer_choice).and_return "Paper"
    #   expect(game.win_loose_draw player.user_choice).to eq "You lost, sorry!"
    # end


  end


end

require 'game'

describe Game do

let (:player){double :player, choice: 'Rock'}
let (:game){Game.new player}

  it 'requires a player when created' do
    expect(game.player).not_to eq ' '
  end

  it 'can randomly select an AI option' do 
    expect(game).to respond_to :random_choice
  end

  describe 'determining result' do

    let (:player){double :player, choice: 'Rock'}
    let (:game){Game.new player}

    it 'can determine a result' do 
      expect(game).to respond_to :result
    end

    it 'can show the player has drawn' do
      allow(game).to receive(:random_choice).and_return 'Rock'
      expect(game.result).to eq "It's a tie!"
    end

    it 'can show the player has lost' do
      allow(game).to receive(:random_choice).and_return 'Paper'
      expect(game.result).to eq "Paper beats Rock. You lose!"
    end

    it 'can show the player has won' do
      allow(game).to receive(:random_choice).and_return 'Scissors'
      expect(game.result).to eq "Rock beats Scissors. You win!"
    end

  end
end
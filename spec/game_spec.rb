require 'game'

describe Game do


  let(:player) { double :player }
  let(:game) { Game.new player }


  it 'respond to challenge' do
    expect(game).to respond_to(:challenge)
  end

  it 'can change from a list of options' do
    expect(game.options).to eq(['Rock', 'Paper','Scissors','Lizard','Spock'])
  end


  describe 'challenge' do

    let(:player) { player.play 'Rock' }

    xit 'can let the player win if he plays Rock and the computer plays scissors' do
      allow(player).to receive(:random_choice) { 'Scissors' }
      expect(game.challenge player.play('Rock')).to eq 'You won! Rock crushes Scissors'
    end

  end


  it 'can generate a random choice for the computer' do
    allow(game).to receive(:random_choice).and_return 'Paper'
  end


end
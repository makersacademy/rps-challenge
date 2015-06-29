require 'player'

describe Player do

let(:player) {Player.new}

  it 'has a list of options to choose from' do
    expect(player.options).to eq ['Rock','Paper','Scissors']
  end

  context 'when selecting' do

    it 'can choose an option' do
      expect(player.selection 'Rock').to eq 'Rock'
    end

    it 'adds the selection choice to the player' do 
      player.selection 'Rock'
      expect(player.choice).to eq 'Rock'
    end

    it 'allows player to change selection' do 
      player.selection 'Rock'
      player.selection 'Paper'
      expect(player.choice).to eq 'Paper'
    end

    it 'raises an error if not Rock/Paper/Scissors' do
      expect{player.selection 'Banana'}.to raise_error 'Please select Rock, Paper or Scissors'
    end
  end
end
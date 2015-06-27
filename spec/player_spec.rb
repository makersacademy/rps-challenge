require 'player'

describe Player do

  let(:player) { Player.new }

  it 'has a list of options to choose' do
    expect(player.options).to eq(['Rock', 'Paper','Scissors','Lizard','Spock'])
  end


  describe 'play' do

    it 'can choose one option from the list' do
      expect(player.play('Rock')).to eq 'Rock'
    end

    it 'reise an error if the choice is wrong' do
      expect{ player.play('Air') }.to raise_error 'choice not available'
    end

  end

end
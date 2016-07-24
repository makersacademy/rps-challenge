require 'computer'

describe Computer do

  subject(:computer) { described_class.new(hands) }


  let(:player_1) { double('Player', :name => 'Mannie') }
  let(:hands) { double('Hands', :show => [:rock1, :paper1, :scissors1]) }
  let(:game) { double('Game', :player_1 => player_1, :player_2 => computer) }

  it 'selects a hand from available hands' do
    allow(computer).to receive(:select_random).and_return('rock')
    expect(computer.hand).to eq 'rock'
  end

  it 'computer name is The Computer' do
    expect(computer.name).to eq 'The Computer'
  end

end

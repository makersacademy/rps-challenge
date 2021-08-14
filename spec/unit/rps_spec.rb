require 'rps'
require 'computer'

describe Rps do

  subject { described_class.new }

  it 'takes players_move as move attribute' do
    subject.players_move(:move)
    expect(subject.move).to eq :move
  end

  it 'takes pcomputers_move as computer attribute' do 
    subject.computer_move
    expect(subject.computer).not_to eq(nil)
  end
end
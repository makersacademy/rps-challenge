require 'player'

describe Player do

  subject(:player) { described_class.new('Sam') }
  it 'stores player\'s name' do
    expect(player.name).to eq 'Sam'
  end
  it 'stores a move which is defaulted to nil at instantiation' do
     expect(player.move).to eq nil
   end

   it 'updates player\'s move' do
     subject.update_move('rock')
     expect(subject.move).to eq 'rock'
   end
end

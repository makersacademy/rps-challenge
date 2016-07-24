require 'computer_player.rb'

describe Computer_Player do

describe '#initialize' do
  it 'Computer player has a name' do
    expect(subject.name).to eq "Beccatron"
  end
end

  describe '#computer_move' do
    it 'generates a move' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      expect(subject.computer_move).to eq "Scissors"
    end
  end
end

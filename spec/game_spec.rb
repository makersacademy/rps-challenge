require 'game'

describe Game do
  let(:game) { described_class.new(player) }
  let(:player) { double("player", :name => 'Tom')}

  it 'can randomly choose computers move' do
    allow(Kernel).to receive(:rand).and_return 0
    expect(game.computer_choise).to eq("Rock")
  end
end

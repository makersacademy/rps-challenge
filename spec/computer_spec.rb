require 'computer'

describe Computer do
  subject(:computer_player) { described_class.new }
  let(:choices) { Computer::MOVE }

  it 'picks a random move' do
    expect(choices).to include computer_player.move
  end
end

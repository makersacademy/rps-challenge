require 'computer'

describe Computer do
  it 'receives choice' do
    player = Computer.new
    expect(Computer::OPTIONS).to include player.choice
  end
end

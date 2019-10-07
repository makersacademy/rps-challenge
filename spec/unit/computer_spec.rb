require "./models/computer"

RSpec.describe Computer do
  it 'allows computer to make a choice' do
    computer = Computer.new
    expect([:rock, :paper, :scissors]).to include(computer.weapon)
  end
end

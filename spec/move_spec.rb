require 'move'

describe Move do

  subject(:ellis) {Move.new("Rock")}

  it 'returns its name' do
    expect(ellis.move).to eq "Rock"
  end

end
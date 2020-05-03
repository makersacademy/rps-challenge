require 'player'

describe Player do

  subject(:ellis) {Player.new("Ellis")}

  it 'returns its name' do
    expect(ellis.name).to eq "Ellis"
  end

end
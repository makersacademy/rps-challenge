require 'game'

describe Game do

  subject(:jara) { Game.new('Jara') }

  it "takes a name at initialize" do
    expect(subject.player_name).to eq 'Jara'
  end

end

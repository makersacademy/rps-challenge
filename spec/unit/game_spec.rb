require './models/game'

RSpec.describe Game do

  it 'provides a rock, paper or scissors as the computer weapon' do
    expect(Game.computer_weapon).to eq("rock") | eq("paper") | eq("scissors")
  end
end

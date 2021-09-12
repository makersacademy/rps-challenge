require 'opponent'

describe Opponent do

  it "#weapon_choise" do
    expect(['Rock', 'Paper', 'Scissors']).to include subject.random_weapon
  end
end
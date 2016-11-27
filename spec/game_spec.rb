require 'game'

describe Game do
  subject(:game) {described_class.new(player_klass, computer_klass)}
  let(:player) {double :player}
  let(:computer) {double :computer}
end

context "Winning or losing the game" do

  it "should the let the player know if they have won" do
  end

end

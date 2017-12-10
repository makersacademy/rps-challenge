require_relative "../lib/computer_player"

describe Computer do
  subject(:computer) {described_class.new}

 it "should return a random hand" do
   expect(computer.hands).to include(computer.select_hand)
 end

end

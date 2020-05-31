require 'player'

describe Player do

  let (:john) { Player.new("john") }

  describe "#name" do
    it "Returns the name" do
     expect(john.name).to eq("john")
    end
  end
end

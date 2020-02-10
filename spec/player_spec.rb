require 'player'

describe Player do

  subject(:dave) {Player.new("dave")}

  describe " #name" do
    it 'should respond to name' do
      expect(subject).to respond_to(:name)
    end

    it "should return dave" do
      expect(dave.name).to eq "dave"
    end

  end

end
require "player"
describe Player do
    describe "#name" do
        it "should reveal its name" do
            player = Player.new("James")
            expect(player.name).to eq("James")
        end
    end
end

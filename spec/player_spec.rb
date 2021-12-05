require 'player'

describe Player do
	subject {Player.new("Sam")}
	context "initialization" do
		it "makes an instance of itself" do
			expect(subject).to be_an_instance_of(Player)
		end
	end

end
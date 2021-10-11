# require 'player'

# describe Player do
#   it "gets initialised with 3 lives" do
#     expect(subject.lives).to eq 3
#   end

#   it "can choose a hand out of rock/paper/scissors" do
#     subject.choose_hand("rock")
#     expect(subject.hand).to eq "rock"
#   end

#   it "raises error if user picks something else" do
#     expect { subject.choose_hand("rocksss") }.to raise_error "That is not available"
#   end

#   ###########testing for stub
#   # it "can randomly allocate a hand" do
#   #   allow(subject).to receive(:random_hand).and_return("paper")
#   #   expect(subject.hand).to eq("paper")
#   # end
# end

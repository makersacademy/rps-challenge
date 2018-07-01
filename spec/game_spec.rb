# require 'game'
#
# describe Game do
#
#   describe '#result' do
#     context "return win" do
#       it "player is rock and computer is scissors" do
#         expect(subject.result).to eq :win
#       end
#       it "player is scissors and computer is paper" do
#         expect(subject.result).to eq :win
#       end
#       it "player is paper and computer is rock" do
#         expect(subject.result).to eq :win
#       end
#     end
#     context "return lose" do
#       it "player is scissors and computer is rock" do
#         expect(subject.result).to eq :lose
#       end
#       it "player is paper and computer is scissors" do
#         expect(subject.result).to eq :lose
#       end
#       it "player is rock and computer is paper" do
#         expect(subject.result).to eq :lose
#       end
#     end
#     context "return draw" do
#       it "player is scissors and computer is scissors" do
#         expect(subject.result).to eq :draw
#       end
#       it "player is paper and computer is paper" do
#         expect(subject.result).to eq :draw
#       end
#       it "player is rock and computer is rock" do
#         expect(subject.result).to eq :draw
#       end
#     end
#   end
# end

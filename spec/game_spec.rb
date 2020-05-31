require './lib/game'

describe Game do

  let(:name) { double :name, name: 'Sophie', move: "rock" }
  let(:computer) { double :computer, name: 'computer', move: "scissors" }
  subject { described_class.new(name, computer) }

  it "it can an create an instance of itself" do
    expect(described_class).to respond_to(:create).with(2).arguments
  end

  # it 'stores a player' do
  #   expect(subject.name).to eq :name
  # end
end

#   describe "#winner" do
#     it 'should respond to winner' do
#       expect(Game.new).to respond_to(:winner) 
#     end

#     it 'should return a tie if player and computer get same answer' do
#       expect(subject.winner).to eq("It's a tie!")
#     end
#   end
# end

require 'game'
describe Game do

  let(:player_1){ double :player_1 }
  let(:player_2) { double :player_2 }
  subject { described_class.new(player_1)}
  

  it 'can accept player as argument' do
    expect(described_class).to respond_to(:new).with(1).arguments
  end

  it 'returns player 1' do
    expect(subject.player_1).to eq player_1
  end


  describe " #store_player_1_choice" do
    it "exists" do
      expect(subject).to respond_to(:store_player_1_choice).with(1).arguments
    end

    it "can store player 1's choice" do
      subject.store_player_1_choice("Rock")
      expect(subject.player_1_choice).to eq("Rock")
    end
  end

  describe " #create_computer_choice" do
    it "the computer can return it's own given value" do
      srand(67809)
      expect(subject.create_computer_choice).to eq("Scissors")
    end
  end

  describe " #computer_choice" do
    it "should return computer choice following using create_computer_choice command" do
      srand(67810)
      subject.create_computer_choice
      expect(subject.computer_choice).to eq("Rock")
    end
  end
end
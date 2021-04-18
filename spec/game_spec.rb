require 'game'
describe Game do
  let(:subject) { Game.new("player") }
  
  describe 'Game' do
    it 'is a class' do
      expect(subject).to be_an_instance_of(Game)
    end

    it 'has a player' do
      expect(subject).to respond_to(:player)
    end

    it 'responds to #com_move' do
      expect(subject).to respond_to(:com_move)
    end
  end

  # describe '#rock' do
  #   it 'returns "rock"' do
  #     expect(subject.rock).to eq("rock")
  #   end
  # end

  # describe '#paper' do
  #   it 'returns "paper"' do
  #     expect(subject.paper).to eq("paper")
  #   end
  # end

  # describe '#scissors' do
  #   it 'returns "scissors"' do
  #     expect(subject.scissors).to eq("scissors")
  #   end
  # end

  describe '#com' do
    it 'returns a value' do
      expect(subject.com_move).not_to be_nil
    end
    
    it 'returns a random value from an array' do
      expect([:rock, :paper, :scissors]).to include(subject.com_move)
    end

    # it 'returns a random value from an array' do
    #   expect(subject.com).to 
    # end
  end
end

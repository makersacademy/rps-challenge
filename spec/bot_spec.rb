require 'bot'

describe Bot do
  let(:subject) { Bot.new }

  describe "#random_choice" do
    it 'picks a ranodm option' do
      expect(['rock', 'paper', 'scissors']).to include(subject.random_choice)
    end

    it 'always return an option' do
      expect(subject.random_choice).not_to be_empty
    end
  end

  # describe 'points' do
  #   it 'returns the points before game starts' do
  #     expect(subject.points).to eq 0
  #   end
  # end
end

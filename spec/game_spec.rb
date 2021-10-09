require 'game'

describe Game do
  let(:user){ double :user}
  let(:computer){ double :computer }
  subject(:game) { described_class.new(user, computer) }

  describe "#init" do
    it 'retrieves the user' do
      expect(subject.user).to eq user
    end

    it 'retrieves the computer' do
      expect(subject.computer).to eq computer
    end
  end
end
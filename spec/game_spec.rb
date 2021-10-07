require "game"

describe Game do
  describe '.initialize' do
    it "should initialize with a choices array" do
      expect(subject.choices).to eq(['rock', 'paper', 'scissors'])
    end
  end
end
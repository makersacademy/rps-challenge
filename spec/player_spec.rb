require 'player'

describe Player do

  subject(:player) { described_class.new("George") }

  describe '#new' do

    it "should store its own name" do
      expect(subject.name).to eq "George"
    end

    it "should store choice as nil" do
      expect(subject.choice).to eq nil
    end

  end

  describe '#choose' do

    it "should set choice to rock" do
      subject.choose("Rock")
      expect(subject.choice).to eq "Rock"
    end

  end


end

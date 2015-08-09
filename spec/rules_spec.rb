require './lib/rules'

describe Rules do

  describe '#beat' do
    it'returns an error if the user chooses an element outside of the rules\'s choices' do
      element1 = :abc
      element2 = :bcd
      expect{subject.beat :element1, :element2}.to raise_error 'No such element in the rules'

    end

    it 'compares two elements and returns true if the first one is wining' do
      expect(subject.beat :rock, :scissors).to eq true
      expect(subject.beat :rock, :rock).to eq nil
      expect(subject.beat :rock, :paper).to eq false

      expect(subject.beat :paper, :rock).to eq true
      expect(subject.beat :paper, :paper).to eq nil
      expect(subject.beat :paper, :scissors).to eq false

      expect(subject.beat :scissors, :paper).to eq true
      expect(subject.beat :scissors, :scissors).to eq nil
      expect(subject.beat :scissors, :rock).to eq false
    end


  end

end
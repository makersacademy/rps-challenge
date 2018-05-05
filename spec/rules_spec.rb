require 'rules'

describe Rules do
  describe '#initialize' do
    it 'should initialize a set of rules' do
      expect(subject.rules).to eq( {:rock => :scissors,
          :paper => :rock,
          :scissors => :paper} )
    end
  end
end

require 'robot'

describe Robot do

  describe '#initialize' do
    it 'has a default name Robot' do
      expect(subject.name).to eq "Robot"
    end

    it 'has a choice set to an array of weapon choices' do
      expect(subject.choice).not_to be_empty 
    end
  end
end

require 'computer'

describe Computer do

  it { is_expected.to respond_to :hand }

  it 'should initialize with a hand of nil' do
    expect(subject.hand).to be nil
  end

  context '#rand_choice' do

    it { is_expected.to respond_to :rand_choice }

    it 'should assign random choice to hand' do
      subject.rand_choice
      expect(subject.options.include?(subject.hand)).to be true 
    end
  end
end

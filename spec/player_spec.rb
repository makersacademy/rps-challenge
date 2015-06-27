require 'spec_helper'

describe Player do

  it { is_expected.to respond_to(:choose).with(1).argument }

  describe 'choose' do
    it 'changes choice to the players choice' do
      subject.choose('rock')
      expect(subject.choice).to eq 'rock'
    end
  end
end
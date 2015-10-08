require 'rspec'
require_relative '../lib/hand.rb'

describe Hand do

subject { Hand.new('Tim') }

  context 'when taking an RPS desgination,' do

    it 'can take a shape and return it.' do
      subject.throw_hand(:rock)
      expect(subject.shape).to eq :rock
    end

    it 'rejects an incorrect RPS shape.' do
      expect { subject.throw_hand('rock') }.to raise_error 'This ' \
      'is not a recognised RPS shape.'
    end

    it 'throws a random RPS hand if none is set.' do
      expect(Hand::ALLOWED_SHAPES).to include(subject.throw_hand.shape)
    end

  end

end
require 'rspec'
require_relative '../lib/hand.rb'

describe Hand do

  # Don't do this - breaks duck typing.
  # it 'when initialised, does not have an RPS shape.' do
  #   expect { subject.shape? }.to raise_error 'No RPS shape set.'
  # end

  context 'when taking an RPS desgination,' do

    it 'can take a shape and return it.' do
      subject.shape!(:rock)
      expect(subject.shape?).to eq :rock
    end

    # Don't do this - breaks duck typing.
    # it 'rejects an incorrect RPS shape.' do
    #   expect { subject.shape!('rock') }.to raise_error 'This is not a recognised RPS shape.'
    # end

  end

  it 'can be asked to take a random RPS shape.' do
    subject.randomise
    # Woah, coaches! Is the below OK?
    expect(Hand::ALLOWED_SHAPES).to include(subject.shape?)
  end

end
require 'rivalbot'

describe Rivalbot do
  subject { described_class.new }
  describe '#make_choice' do
    it 'chooses rock, paper or scissors' do
      subject.make_choice
      expect(subject.robo_choice).to satisfy { |x| ['rock', 'paper', 'scissors'].include?(x) }
    end
  end
end

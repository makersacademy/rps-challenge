require 'rule_book'

describe RuleBook do

  # Other mocks
  let(:enemies) { double(:enemies) }
  let(:enemies_class) { double(:enemies_class, new: enemies) }

  # Books
  let(:subject) { described_class.new(enemies_class) }

  describe '#initialize' do
    it 'has rules' do
      expect(subject.rules).to eq [enemies] * 3
    end
  end
end

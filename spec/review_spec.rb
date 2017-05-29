require 'review'

describe Review do
  subject(:review) { described_class.new(:Sally)}

  describe '#values' do
    it 'produces a string of results' do
    expect(review.values).to include(["Sally", "paper", "rock", "COMPUTER WON"])
    end
  end

  describe '#print_values' do
    it 'produces a string of the results' do
      review.values
      review.print_values
      expect(review.results). to include "Sally played spock and the computer played rock COMPUTER WON\n"
    end
  end
end

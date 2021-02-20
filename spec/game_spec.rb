require 'game'

describe Game do
  it 'computer chooses randomly' do
    expect(subject.comp_choice).to eq(:Rock).or eq(:Paper).or eq(:Scissors)
  end
end

require 'computer'
require 'game'

describe 'computer' do

  subject = Computer.new([:rock, :paper, :scissors])

  it 'can make a random choice' do
    expect([:rock, :paper, :scissors].include?(subject.option.to_sym)).to eq true
  end
end

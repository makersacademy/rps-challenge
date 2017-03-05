require 'computer'
require 'game'

describe 'computer' do

  subject = Computer.new

  it 'can make a random choice' do
    expect([:rock, :paper, :scissors].include?(subject.option([:rock, :paper, :scissors]).to_sym)).to eq true
  end
end

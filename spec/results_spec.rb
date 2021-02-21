require 'results'

describe Results  do
  it 'shows the winner' do
    subject = Results.new
    winner = subject.check("Paper", "Rock")
      expect(winner).to eq('You')
    end
  end

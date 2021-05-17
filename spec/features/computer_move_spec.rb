
describe 'computer_move' do 
  it 'returns a random move' do 
    expect(computer_move). to include(['rock', 'paper', 'scissors'])
  end
end

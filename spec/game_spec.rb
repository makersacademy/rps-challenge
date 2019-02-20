describe Game do
  it 'selects a move' do
    subject.computer_choice
    expect(["Rock","Paper","Scissors"]).to include(subject.computer_move)
  end
end

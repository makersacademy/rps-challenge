feature 'Game is playable' do
  scenario 'Can choose R,P,S' do
    sign_in
    expect(page).to have_select('move', options: ['Rock', 'Paper', 'Scissors'])
  end

  scenario 'Remembers your choice' do
    sign_in
    play("Rock")
    expect(page).to have_content "you chose Rock"
  end

  scenario 'Chooses for computer' do
    allow_any_instance_of(Computer).to receive(:compmove).and_return('Scissors')
    sign_in
    play("Rock")
    expect(page).to have_content("The computer chose... Scissors")
  end

end

feature 'Sign-in' do
  scenario 'Player enters their name and this is displayed on-screen' do
    enter_name_and_submit 
    expect(page).to have_content("Welcome to Rock, Paper, Scissors Ed!")
  end
end

feature 'Making a move' do
  scenario 'Player is presented with a choice of moves' do
    enter_name_and_submit 
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'Player chooses move and gets confirmation' do
    enter_name_and_submit 
    click_button 'Rock'
    expect(page).to have_content("Ed chose rock!")
  end
end


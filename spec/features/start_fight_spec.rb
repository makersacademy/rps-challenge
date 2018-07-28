feature 'Starts the game' do
  scenario 'should let the user play a game' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Submit'
    click_button 'I am ready!'
    expect(page).to have_content "Rock? Paper? Scissors?"
  end
end

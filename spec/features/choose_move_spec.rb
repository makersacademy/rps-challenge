feature 'Entering move' do
  scenario 'Can submit a move' do
    visit('/')
    fill_in :player_name, with: "Jimmy"
    click_button 'Submit'
    click_button 'ROCK'
    expect(page).to have_content 'You selected ROCK'
  end
end

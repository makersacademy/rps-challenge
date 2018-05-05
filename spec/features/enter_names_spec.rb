feature 'Homepage' do
  scenario 'See what the game is called' do
    visit('/')
    fill_in :player, with: "Charly"
    click_button 'Submit'
    expect(page).to have_content "Rock, Paper, Scissors Game"
  end
end

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player, with: "Charly"
    click_button 'Submit'
    expect(page).to have_content "Charly"
  end
end

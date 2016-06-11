feature 'Play Page Spec' do
  scenario 'Start of the game' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    click_button 'Start Game'
    expect(page).to have_content 'Vs. Computer'
  end
end

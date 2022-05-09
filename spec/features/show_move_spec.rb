feature 'show move' do
  scenario 'it shows player\'s move' do
    visit('/')
    fill_in :player_1_name, with: 'Jason'
    click_button 'Submit'
    choose('paper')
    click_button 'Select'
    expect(page).to have_content 'Player 1 played paper'
  end
end
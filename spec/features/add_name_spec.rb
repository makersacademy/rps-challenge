feature 'add name' do
  scenario 'adds the player\'s name' do
    visit('/')
    fill_in :player_1_name, with: 'Jason'
    click_button 'Submit'
    expect(page).to have_content 'Jason'
  end
end
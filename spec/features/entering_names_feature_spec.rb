# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Be able to enter player name.' do
  scenario 'Enter name as fred' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Dave'
  end
end

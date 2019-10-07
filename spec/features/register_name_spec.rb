# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register name' do
  scenario 'asks player to enter name before playing' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Ian'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Tim and Ian!'
  end
end

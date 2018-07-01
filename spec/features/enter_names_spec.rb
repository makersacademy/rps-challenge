# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names ' do
  scenario 'player can add a name' do
    visit('/')
    fill_in :player, with: 'Kees'
    click_button 'Submit'
    expect(page).to have_content 'Kees vs Computer'
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names' do
  scenario 'submitting names' do
    visit '/'
    fill_in :player_name, with: 'Goose'
    click_button 'Submit'
    expect(page).to have_content "Player 1: Goose"
  end
end

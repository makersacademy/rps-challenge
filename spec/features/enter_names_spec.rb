# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names ' do
  scenario 'player can add a name' do
    sign_in_and_play
    click_button 'Submit'
    expect(page).to have_content 'Kees vs Computer'
  end
end

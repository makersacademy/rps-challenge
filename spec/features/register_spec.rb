# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Player 1: Goose"
  end
end

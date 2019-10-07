# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'enter name' do
  scenario 'the player can submit their name and be redirected to a welcome page' do
    sign_in_and_play
    expect(page).to have_content 'Welcome James'
  end
end
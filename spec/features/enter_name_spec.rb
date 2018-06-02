# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'player can enter name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content 'Bruce vs Computer'
  end
end

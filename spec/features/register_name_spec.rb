# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'allows marketeer to register name', :type => :feature do
  scenario 'before playing the game' do
    sign_in_and_play
    expect(page).to have_content('Hi Albert!')
  end
end

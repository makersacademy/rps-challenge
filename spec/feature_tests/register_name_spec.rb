# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register player name' do
  scenario 'user can add their name with a submit button' do
    sign_in
    expect(page).to have_content 'Holly vs Computer'
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register a name' do
  scenario 'submitting a name and see it in light' do
    sign_in_and_play
    expect(page).to have_content "Noa is playing Rock, Paper, Scissors vs. the computer"
  end
end

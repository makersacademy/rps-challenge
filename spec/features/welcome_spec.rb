# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'see my name on welcome page' do
  scenario 'Can sign in and see my name on the welcome page' do
    sign_in_and_play
    expect(page).to have_content 'Jini'
  end
end

# the marketeer will be presented the choices (rock, paper and scissors)

feature 'choose rock, paper or scissors' do
  scenario 'Can sign in and choose an option: rock, paper, or scissors' do
    sign_in_and_play
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end
end

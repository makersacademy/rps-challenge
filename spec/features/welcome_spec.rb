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

feature 'have a choice of rock, paper or scissors' do
  scenario 'Can sign in and see options for rock, paper, or scissors' do
    sign_in_and_play
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end
end

# the marketeer can choose one option

feature 'choose an option' do
  scenario 'Can sign in and choose an option: rock, paper, or scissors' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'You chose rock!'
  end
end

# the game will choose a random option
feature 'computer chooses an option' do
  scenario 'Computer can choose an option: rock, paper, or scissors' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'You chose rock!'
    expect(page).to have_content 'Your opponent chose'
  end
end

feature 'computer chooses a random option' do
  scenario 'Computer chooses a random option: rock, paper, or scissors' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'You chose rock!'
    expect(page).to have_content 'Your opponent chose'
  end
end

feature 'it displays the players name' do
  scenario 'player has entered their name' do
    visit '/'
    fill_in :name, with: 'James'
    click_button 'OK'
    expect(page).to have_content 'James'
  end
end

feature 'playing a game of rps' do
  scenario 'user can see a choice of rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end
end

feature 'player chooses Rock, Paper or Scissors' do
  scenario 'James chooses Rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'James chose rock'
  end
end

feature 'game chooses Rock, Paper or Scissors' do
  scenario 'Computer chooses Rock' do
    sign_in_and_play
    click_button 'rock'
    message = find(:css, '#computer').text
    expect(computer_choices).to include message
  end
end

feature 'game chooses a random option' do
  scenario 'player chose rock, computer chose scissors at random' do
    sign_in_and_play
    srand(3)
    click_button 'rock'
    expect(page).to have_content 'Computer chose scissors'
  end
end

feature 'the game can have a winner' do
  scenario 'player wins the game' do
    sign_in_and_play
    srand(3)
    click_button 'rock'
    expect(page).to have_content 'James wins!'
  end
end

def computer_choices
  [:rock, :paper, :scissors].map do |choice|
    "Computer chose #{choice}"
  end

  end

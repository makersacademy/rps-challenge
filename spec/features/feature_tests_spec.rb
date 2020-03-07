feature 'Enter names' do
  scenario 'Player can input and submit a name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to the game Jara'
  end
end

feature 'Choose moves' do
  scenario 'Player can choose between three buttons' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end

  scenario 'Computer can choose a random move' do

  end
end

feature "See result" do
  scenario 'I can see my choice' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Your choice is Scissors'
  end

  scenario 'I can see my oponent choice' do

  end

  scenario 'I can see the winner' do
  end
end

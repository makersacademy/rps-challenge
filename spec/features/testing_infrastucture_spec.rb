feature 'Enter names' do
  scenario 'Solo player can enter their name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content('Robert VS CPU')
  end

  scenario 'Multiple players can enter their names and see them on the screen' do
    multi_in_and_play
    expect(page).to have_content('Robert VS Evelina')
  end
end

feature 'Make a choice' do
  scenario 'Player can choose Rock and see it on screen' do
    sign_in_and_play
    click_on('Rock')
    expect(page).to have_content('Robert: Rock')
  end
  scenario 'Player can choose Paper and see it on screen' do
    sign_in_and_play
    click_on('Paper')
    expect(page).to have_content('Robert: Paper')
  end
  scenario 'Player can choose Scissors and see it on screen' do
    sign_in_and_play
    click_on('Scissors')
    expect(page).to have_content('Robert: Scissors')
  end
  scenario 'Player can choose Lizard and see it on screen' do
    sign_in_and_play
    click_on('Lizard')
    expect(page).to have_content('Robert: Lizard')
  end
  scenario 'Player can choose Spock and see it on screen' do
    sign_in_and_play
    click_on('Spock')
    expect(page).to have_content('Robert: Spock')
  end
end

# feature 'Computer makes a choice' do
# end

# feature 'Displays who won the match' do
# end

# feature 'Displays the score' do
# end

feature 'Player can reset the game' do
  scenario 'Player can click button and reset the score' do
    sign_in_and_play
    click_on('Spock')
    click_on('Reset')
    expect(page).to have_content('Robert: 0 - CPU: 0')
  end
end

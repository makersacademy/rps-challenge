feature 'Player can choose a weapon' do
  scenario 'Player can choose "rock"' do
    sign_in_as_hannah
    expect(page).to have_selector(:link_or_button, 'Rock')
  end

  scenario 'Player can choose "paper"' do
    sign_in_as_hannah
    expect(page).to have_selector(:link_or_button, 'Paper')
  end

  scenario 'Player can choose "scissors"' do
    sign_in_as_hannah
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end

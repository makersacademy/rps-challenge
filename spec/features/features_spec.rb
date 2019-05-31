feature 'Can store player name' do
  scenario 'when submitting it on the website' do
    enter_name_and_play
    expect(page).to have_content 'Kelvin'
  end
end

feature 'Can play RPS' do
  scenario 'Should be able to pick rock' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button,'Rock')
  end

  scenario 'Should be able to pick paper' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button,'Paper')
  end

  scenario 'Should be able to pick scissors' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button,'Scissors')
  end

  scenario 'Should be able to pick lizard' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button,'Lizard')
  end

  scenario 'Should be able to pick spock' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button,'Spock')
  end

  scenario 'Can win / lose / draw' do
    enter_name_and_play
    click_button('Rock')
    expect(page).to have_content 'Play again?'
  end

  scenario 'has a button to play again' do
    enter_name_and_play
    click_button('Rock')
    expect(page).to have_selector(:link_or_button,'Play!')
  end

  scenario 'Can take you back to play again' do
    enter_name_and_play
    click_button('Rock')
    click_button('Play!')
    expect(page).to have_selector(:link_or_button,'Rock')
  end
end
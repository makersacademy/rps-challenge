feature 'can play on after initial game' do
  scenario 'play on as the same player' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
    sign_in_and_play_sheldon
    click_button('Lizzard')
    click_button('Play again')
    expect(page).to have_content 'Player1 time to make your move...'
  end

  scenario 'play on by entering new names' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
    sign_in_and_play_sheldon
    click_button('Lizzard')
    click_button('New players')
    expect(page).to have_content 'Enter your name'
  end

end

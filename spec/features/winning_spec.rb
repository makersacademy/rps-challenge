
feature 'Winning' do
  scenario 'winning a round single player' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    choose('rock')
    click_button('Fight!')
    expect(page).to have_content 'Arnold won!'
    expect(page).to have_content 'CPU lost!'
  end

  scenario 'winning a round multiplayer' do
    sign_in_and_play_multiplayer
    choose('rock')
    click_button('Fight!')
    choose('scissors')
    click_button('Fight!')
    expect(page).to have_content 'Arnold won!'
    expect(page).to have_content 'Abram lost!'
  end
end

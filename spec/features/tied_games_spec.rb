feature 'testing players can tie' do
  scenario 'player 1 and computer can tie' do
    allow_any_instance_of(Computer).to receive(:turn).and_return(:Scissors)
    sign_in_and_play_computer
    click_button 'Scissors'
    expect(page).to have_content 'You tied'
  end
  scenario 'player 1 and player 2 can tie' do
    sign_in_and_play_multiplayer
    click_button 'p1s'
    click_button 'p2s'
    expect(page).to have_content 'You tied'
  end
end

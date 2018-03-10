feature 'testing players can win' do
  scenario 'player 1 can win' do
    allow_any_instance_of(Computer).to receive(:turn).and_return(:Scissors)
    sign_in_and_play_computer
    click_button 'Rock'
    expect(page).to have_content 'Charlene won'
  end
  scenario 'computer can win' do
    allow_any_instance_of(Computer).to receive(:turn).and_return(:Scissors)
    sign_in_and_play_computer
    click_button 'Paper'
    expect(page).to have_content 'Computer won'
  end
  scenario 'player 1 can win in multiplayer' do
    sign_in_and_play_multiplayer
    click_button 'p1r'
    click_button 'p2s'
    expect(page).to have_content 'Charlene won'
  end
  scenario 'player 2 can win in multiplayer' do
    sign_in_and_play_multiplayer
    click_button 'p1p'
    click_button 'p2s'
    expect(page).to have_content 'Bob won'
  end
end

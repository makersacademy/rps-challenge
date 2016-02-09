feature 'There is an outcome to the game' do
  scenario 'player 1 wins' do
    sign_in_with_name
    allow_any_instance_of(Array).to receive(:sample){'Scissors'}
    click_button 'Rock'
    expect(page).to have_content('VICTORY')
  end

  scenario 'player 2 wins' do
    sign_in_with_name
    allow_any_instance_of(Array).to receive(:sample){'Paper'}
    click_button 'Rock'
    expect(page).to have_content('LOSER')
  end

  scenario 'a draw' do
    sign_in_with_name
    allow_any_instance_of(Array).to receive(:sample){'Rock'}
    click_button 'Rock'
    expect(page).to have_content('TRY AGAIN')
  end
end

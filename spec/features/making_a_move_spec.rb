feature 'player move is visible on results screen' do
  scenario 'players selects rock' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content('rock')
  end

  scenario 'player selects paper' do
    sign_in_and_play
    click_on 'Paper'
    expect(page).to have_content('paper')
  end

  scenario 'player selects scissors' do
    sign_in_and_play
    click_on 'Scissors'
    expect(page).to have_content('scissors')
  end
end

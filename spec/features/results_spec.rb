feature 'results' do
  before do
    sign_in_and_play
  end
  scenario 'adam wins on god' do
    fill_in :weapon, with: 'paper'
    click_button 'Play'
    fill_in :weapon, with: 'rock'
    click_button 'Play'
    expect(page).to have_content('Adam wins')
  end

  scenario 'god wins on adam' do
    fill_in :weapon, with: 'paper'
    click_button 'Play'
    fill_in :weapon, with: 'scissors'
    click_button 'Play'
    expect(page).to have_content('God wins')
  end

  scenario 'nul when same weapons' do
    fill_in :weapon, with: 'paper'
    click_button 'Play'
    fill_in :weapon, with: 'paper'
    click_button 'Play'
    expect(page).to have_content('No winners')
  end
  scenario 'adam wins on god' do
    fill_in :weapon, with: 'rock'
    click_button 'Play'
    fill_in :weapon, with: 'paper'
    click_button 'Play'
    expect(page).to have_content('God wins')
  end

  scenario 'god wins on adam' do
    fill_in :weapon, with: 'rock'
    click_button 'Play'
    fill_in :weapon, with: 'scissors'
    click_button 'Play'
    expect(page).to have_content('Adam wins')
  end

  scenario 'nul when same weapons' do
    fill_in :weapon, with: 'rock'
    click_button 'Play'
    fill_in :weapon, with: 'rock'
    click_button 'Play'
    expect(page).to have_content('No winners')
  end
  scenario 'adam wins on god' do
    fill_in :weapon, with: 'scissors'
    click_button 'Play'
    fill_in :weapon, with: 'paper'
    click_button 'Play'
    expect(page).to have_content('Adam wins')
  end

  scenario 'god wins on adam' do
    fill_in :weapon, with: 'scissors'
    click_button 'Play'
    fill_in :weapon, with: 'scissors'
    click_button 'Play'
    expect(page).to have_content('No winners')
  end

  scenario 'nul when same weapons' do
    fill_in :weapon, with: 'scissors'
    click_button 'Play'
    fill_in :weapon, with: 'rock'
    click_button 'Play'
    expect(page).to have_content('God wins')
  end
end

feature 'multiplayer' do
  background do
    visit '/'
    fill_in :player_1_name, with: 'Halloumi'
    fill_in :player_2_name, with: 'Pizza'
    click_button 'Start game!'
    click_button 'Rock!'
  end

  scenario "Player 2 can enter name" do
    expect(page).to have_content 'Welcome, Pizza!'
  end

  scenario 'Player 2 can pick rock' do
    click_button 'Rock!'
    expect(page).to have_content 'Pizza picked rock.'
  end

  scenario 'Player 2 can pick paper' do
    click_button 'Paper!'
    expect(page).to have_content 'Pizza picked paper.'
  end

  scenario 'Player 2 can pick Scissors' do
    click_button 'Scissors!'
    expect(page).to have_content 'Pizza picked scissors.'
  end

  scenario 'Player 2 wins' do
    click_button 'Paper!'
    expect(page).to have_content 'Pizza wins!'
  end

end

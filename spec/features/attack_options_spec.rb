feature 'Player has three attack options' do

  before do
    sign_in_and_play
  end

  scenario 'Player selects rock' do
    click_button 'rock'
    expect(page).to have_content('Valentina chose rock')
  end

  scenario 'Player selects paper' do
    click_button 'paper'
    expect(page).to have_content('Valentina chose paper')
  end

  scenario 'Player selects scissors' do
    click_button 'scissors'
    expect(page).to have_content('Valentina chose scissors')
  end
end

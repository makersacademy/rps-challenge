feature 'choose RPS option' do
  scenario 'Player 1 chose rock option' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Marcus chose rock'
  end

  scenario 'Player 1 chose paper option' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'Marcus chose paper'
  end

  scenario 'Player 1 chose scissors option' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'Marcus chose scissors'
  end
end

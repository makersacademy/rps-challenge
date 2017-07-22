feature 'picking rock, paper or scissors' do

  scenario 'the player is shown the options' do
    sign_in
    expect(page).to have_content 'Rock, paper, scissors?'
  end

  scenario 'the player can pick an option' do
    sign_in
    click_button 'ROCK'
    expect(page).to have_content 'Dave has chosen ROCK'
  end

  scenario 'the player can pick an option' do
    sign_in
    click_button 'PAPER'
    expect(page).to have_content 'Dave has chosen PAPER'
  end

  scenario 'the player can pick an option' do
    sign_in
    click_button 'SCISSORS'
    expect(page).to have_content 'Dave has chosen SCISSORS'
  end

end

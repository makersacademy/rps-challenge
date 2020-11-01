feature 'Game takes players selected action' do
  scenario '- Player clicks on rock button' do
    game_sign_in
    click_button 'rock'
    expect(page).to have_content 'Jane selected: ROCK'
  end

  scenario '- Player clicks on paper button' do
    game_sign_in
    click_button 'paper'
    expect(page).to have_content 'Jane selected: PAPER'
  end

  scenario '- Player clicks on scissors button' do
    game_sign_in
    click_button 'scissors'
    expect(page).to have_content 'Jane selected: SCISSORS'
  end
end

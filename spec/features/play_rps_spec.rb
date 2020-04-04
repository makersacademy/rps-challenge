xfeature 'player can play rock paper scissors' do
  scenario 'player chooses rock and is told the result' do
    register_and_play
    click_button 'Rock'
    search_string = /(Phil wins - #{Game::ROCK_BEATS_SCISSORS})|(It's a draw - both players chose rock)|(Phil loses - #{Game::PAPER_BEATS_ROCK})/
    expect(page).to have_content search_string
  end

  scenario 'player chooses paper and is told the result' do
    register_and_play
    click_button 'Paper'
    search_string = /(Phil wins - #{Game::PAPER_BEATS_ROCK})|(It's a draw - both players chose paper)|(Phil loses - #{Game::SCISSORS_BEAT_PAPER})/
    expect(page).to have_content search_string
  end

  scenario 'player choose scissors and is told the result' do
    register_and_play
    click_button 'Scissors'
    search_string = /(Phil wins - #{Game::SCISSORS_BEAT_PAPER})|(It's a draw - both players chose scissors)|(Phil loses - #{Game::ROCK_BEATS_SCISSORS})/
    expect(page).to have_content search_string
  end
end

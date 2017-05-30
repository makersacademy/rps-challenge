feature 'Winning / Losing hand' do
  scenario 'single player: either player or computer wins a hand' do
    sign_in_single
    click_button 'Rock'
    expect(page).to satisfy { |page| page.has_content? '(1)' or page.has_content? 'Tie!' }
  end

  scenario 'multiplayer: player 1 wins' do
    sign_in_multi
    click_button 'Rock'
    click_button 'Scissors'
    expect(page).to have_content 'The Obsidian Man(1)'
  end

  scenario 'multiplayer: player 2 wins' do
    sign_in_multi
    click_button 'Lizard'
    click_button 'Scissors'
    expect(page).to have_content 'Paperboy(1)'
  end

  scenario 'multiplayer: there is a tie' do
    sign_in_multi
    click_button 'Lizard'
    click_button 'Lizard'
    expect(page).to have_content 'Tie!'
   

  end
end

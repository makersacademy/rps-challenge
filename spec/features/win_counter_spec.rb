feature 'win counter' do
  scenario 'displays number of wins of each player' do
    enter_name
    click_button 'Rock'
    click_button 'Rematch'
    expect(page).to have_content 'Scores:'
  end
  scenario 'wins go up by 1 for each player win' do
    srand(67809)
    enter_name
    click_button 'Paper'
    click_button 'Rematch'
    expect(page).to have_content 'Haz score: 0'
    expect(page).to have_content 'John Cena score: 1'
  end
  scenario 'keeps score in multiplayer' do
    enter_multiplayer
    enter_attacks('Rock', 'Paper')
    click_button 'Rematch'
    expect(page).to have_content 'Haz score: 0'
    expect(page).to have_content 'John Cena score: 1'
  end
end


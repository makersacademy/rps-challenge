feature 'Results Page' do

  scenario 'the results page has specific text' do
    game_played
    expect(page).to have_content('Aaaand the winner is')
  end

  pending 'your choice of weapon is displayed' do
    game_played
    expect(page).to have_content('Ed played rock')
  end

  pending 'RPS-Bot has their choice displayed' do
    game_played
    expect
  end
end

feature 'Results' do
  scenario 'when you enter rock, it says you entered rock in the reuslts page' do
    single_player_name
    click_button 'rock'
    expect(page).to have_content 'Dwayne johnson chose rock'
  end

  scenario 'when you enter scissors, it says you entered scissors in the reuslts page' do
    single_player_name
    click_button 'scissors'
    expect(page).to have_content 'Dwayne johnson chose scissors'
  end

  scenario 'when you enter paper, it says you entered paper in the reuslts page' do
    single_player_name
    click_button 'paper'
    expect(page).to have_content 'Dwayne johnson chose paper'
  end

  scenario 'in singleplayer, shows the computers move' do
    single_player_name
    click_button 'paper'
    expect(page).to have_content 'The computer chose'
  end
end

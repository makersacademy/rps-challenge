feature 'playing a game against computer' do
  scenario 'the computer takes a turn' do
    sign_in_player1_and_play
    choose("shape_choice", option:  '0')
    click_on 'Play!'
    expect(page).to have_content 'calculating'
  end
  scenario 'the game is finished' do
    sign_in_player1_and_play
    choose("shape_choice", option:  '0')
    click_on 'Play!'
    expect(page).to have_content 'calculating'
    click_on 'What is that robot up to??'
    expect(page).to have_content 'GAME OVER!'
  end
end

feature 'playing a game against computer' do
  scenario 'the computer takes a turn' do
    sign_in_player1_and_play
    choose("shape_choice", option:  '0')
    click_on 'Play'
    expect(page).to have_content 'Robohands'
  end
  scenario 'losing a game' do
    sign_in_player1_and_play
  end
end

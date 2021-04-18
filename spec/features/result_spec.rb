feature 'result of game' do
  scenario 'once the choice is made, player can their choice displayed' do
    play_and_chose_rock
    expect(page).to have_content 'you have chosen rock'
  end

  scenario 'it displays the choice made by the computer' do
    play_and_chose_rock
    expect(page).to have_content 'computer has chosen paper'
  end

  scenario 'it displays the choice made by the computer' do
    play_and_chose_rock
    expect(page).to have_content "computer wins, you lose"
  end


  scenario 'play again after the match' do
    play_and_chose_rock
    click_button("play again")
    expect(page).to have_content('muhammad, choose one of the following options')
  end
end

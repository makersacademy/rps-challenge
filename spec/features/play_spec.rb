feature 'Play' do

  scenario 'I can choose rock, paper or scissors' do
    sign_up_single
    click_button('rock')
    expect(page).to have_content('Skaiste chose rock')
  end
  scenario 'In single user mode, the computer also chooses a move' do
    sign_up_single
    click_button('rock')
    expect(page).to have_content('Computer chose ')
  end
  scenario 'In multiplayer mode, both users can choose a move' do
    sign_up_multi
    click_button('rock')
    expect(page).to have_content("Hi Seb! What's your move?")
  end
  scenario 'Shows result' do
    sign_up_single
    click_button('rock')
    expect(page).to have_content("Result: ")
  end
  scenario 'Shows correct result' do
    sign_up_multi
    click_button('rock')
    click_button('scissors')
    expect(page).to have_content("Skaiste wins!")
  end
  scenario 'I can play again with the same name' do
    sign_up_single
    click_button('rock')
    click_button('Play again')
    expect(page).to have_content("Hi Skaiste!")
  end
  scenario 'I can play again with the same names' do
    sign_up_multi
    click_button('rock')
    click_button('scissors')
    click_button('Play again')
    expect(page).to have_content("Hi Skaiste!")
    click_button('scissors')
    expect(page).to have_content("Hi Seb!")
  end
  scenario 'I can start a game with new players' do
    sign_up_single
    click_button('rock')
    click_button('New game, new players')
    expect(page).to have_content("Who is playing?")
  end
end

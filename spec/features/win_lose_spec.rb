feature 'choose RPS option' do
  scenario 'choose rock option, WIN' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Marcus wins! \ (•◡•) /'
  end

  scenario 'choose rock option, LOSE' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Your enemy wins! ಠ╭╮ಠ'
  end

  scenario 'choose rock option, DRAW' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Tie Game! (╯°□°）╯︵ ┻━┻'
  end
end

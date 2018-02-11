feature 'choose RPS option' do
  scenario 'choose rock option, WIN' do
    srand(67809)
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Marcus wins! \ (•◡•) /'
    expect(page).not_to have_content 'Your enemy wins! ಠ╭╮ಠ' && 'Tie Game! (╯°□°）╯︵ ┻━┻'
  end

  scenario 'choose rock option, LOSE' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Your enemy wins! ಠ╭╮ಠ'
    expect(page).not_to have_content 'Marcus wins! \ (•◡•) /'&& 'Tie Game! (╯°□°）╯︵ ┻━┻'
  end

  scenario 'choose rock option, DRAW' do
    srand(67810)
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Tie Game! (╯°□°）╯︵ ┻━┻'
    expect(page).not_to have_content 'Marcus wins! \ (•◡•) /'&& 'Your enemy wins! ಠ╭╮ಠ'
  end
end

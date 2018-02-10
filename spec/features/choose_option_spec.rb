feature 'choose RPS option' do
  scenario 'choose rock option, WIN' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'You win Marcus! \ (•◡•) /'
  end

  scenario 'choose rock option, LOSE' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'You lose Marcus! ಠ╭╮ಠ'
  end
end

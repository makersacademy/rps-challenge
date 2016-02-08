feature 'Gameplay' do
  scenario 'reveals the AI\'s weapon choice' do
    visit('/')
    fill_in('player_name', with: 'Jax')
    click_button('Onward!')
    choose('rock')
    click_button('Arm yourself!')
    click_button('Once more unto the breach...!')
    page.assert_text(/The computer has chosen (rock|paper|scissors)./)
  end

  scenario 'displays the match result' do
    visit('/')
    fill_in('player_name', with: 'Jax')
    click_button('Onward!')
    choose('rock')
    click_button('Arm yourself!')
    click_button('Once more unto the breach...!')
    page.assert_text(/(Rock|Paper|Scissors) (beats|ties with|loses to) (rock|paper|scissors)!/)
  end

  # scenario 'announces the winner of the match' do
  #   visit('/')
  #   fill_in('player_name', with: 'Jax')
  #   click_button('Onward!')
  #   choose('rock')
  #   click_button('Arm yourself!')
  #   click_button('Once more unto the breach...!')
  #   page.assert_text(/(Jax|The Computer) wins!/)
  # end
end
feature 'displays result' do
  scenario 'returns you win if win' do
    allow_any_instance_of(Game).to receive(:result).and_return(:win)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('You win!')
  end
  scenario 'returns you win if win' do
    allow_any_instance_of(Game).to receive(:result).and_return(:lose)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('You lose!')
  end
  scenario 'returns you win if win' do
    allow_any_instance_of(Game).to receive(:result).and_return(:draw)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('You draw!')
  end
end

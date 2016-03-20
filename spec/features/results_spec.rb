feature 'Results' do
  scenario 'generates a result' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    play_game
    expect(page).to have_content('It\'s a draw!')
  end
end

feature 'Winner is delcared on result page' do
  scenario 'Winner is declared' do
    sign_in_and_click_play
    click_button(['ROCK', 'PAPER', 'SCISSORS'].sample)
    expect(page).to have_content 'And the winner is'
  end
end

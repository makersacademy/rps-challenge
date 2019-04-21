feature 'Declare A Winner' do
  scenario 'Winner displayed on page' do
    sign_in_and_click_play
    click_button(['ROCK', 'PAPER', 'SCISSORS'].sample)
    expect(page).to have_content 'is the winner!'
  end
end

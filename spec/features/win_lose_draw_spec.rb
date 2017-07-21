feature 'win, lose, draw' do
  before :each do
    sign_in_and_play
      srand(67809)
  end
  scenario 'win' do
    click_on "rock"
    expect(page).to have_text('You win!')
  end
  scenario 'lose' do
    click_on "paper"
    expect(page).to have_text('You lose!')
  end
  scenario 'draw' do
    click_on "scissors"
    expect(page).to have_text('It\'s a draw')
  end
end

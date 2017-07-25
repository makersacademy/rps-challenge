feature 'win, lose, draw' do
  before :each do
    sign_in_and_play
      srand(67809)
  end
  scenario 'win' do
    click_on "rock"
    expect(page).to have_text('win')
  end
  scenario 'lose' do
    click_on "paper"
    expect(page).to have_text('lose')
  end
  scenario 'draw' do
    click_on "scissors"
    expect(page).to have_text('draw')
  end
end

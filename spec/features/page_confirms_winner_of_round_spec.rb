feature "page displays winner" do
  before { sign_in_and_play('Alex') }
  srand(1)
  scenario 'player 1 wins' do
    click_button 'paper'
    expect(page).to have_content 'Alex wins the round!'
  end
  scenario 'draw' do
    click_button 'paper'
    expect(page).to have_content 'Draw!'
  end
  scenario 'player 2 wins' do
    click_button 'rock'
    expect(page).to have_content 'Superhans wins the round!'
  end
end

feature "page displays winner" do
  before { sign_in_and_play('Alex') }
  srand(1)
  scenario 'human wins' do
    click_button 'paper'
    expect(page).to have_content 'Alex wins!'
  end
  scenario 'draw' do
    click_button 'paper'
    expect(page).to have_content 'Draw!'
  end
  scenario 'computer wins' do
    click_button 'rock'
    expect(page).to have_content 'Superhans wins!'
  end
end

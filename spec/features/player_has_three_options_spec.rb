feature 'player can choose rock, paper, or scissors' do
  before { sign_in_and_play 'Alex' }
  scenario 'there is a rock button' do
    expect(page).to have_button 'Rock'
  end
  scenario 'there is a paper button' do
    expect(page).to have_button 'Paper'
  end
  scenario 'there is a scissors button' do
    expect(page).to have_button 'Scissors'
  end
end

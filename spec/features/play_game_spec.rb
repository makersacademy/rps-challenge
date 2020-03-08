feature 'playing the game' do
  before do
    visit('/')
    fill_in :player_name, with: 'Duffy Duck'
    click_button 'Submit'
  end
  scenario 'present choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
  scenario 'choose a move to play' do
    click_button 'Rock'
    expect(page).to have_content 'Your move was: Rock'
    click_button 'Paper'
    expect(page).to have_content 'Your move was: Paper'
    click_button 'Scissors'
    expect(page).to have_content 'Your move was: Scissors'
  end
end
  
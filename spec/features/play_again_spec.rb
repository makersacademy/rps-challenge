feature 'Can rematch after the outcome' do
  scenario 'Rematch button will take you back to play screen' do
    sign_in
    click_button 'Paper'
    click_button 'Next Round'
    expect(page).to have_content 'Rock, Paper, Scissors?'
  end
end

feature 'win or loose' do
  scenario 'player wins or looses a game' do
    sign_in_with_name
    click_button 'Rock'
    expect(page).to have_content 'The winner is:'
  end
end

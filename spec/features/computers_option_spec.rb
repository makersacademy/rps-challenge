feature 'Computer\'s option' do
  scenario 'The Computer can choose an option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer has chosen: Rock - it\'s a draw!'
  end
end

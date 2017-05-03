feature 'Computer\'s option' do
  scenario 'Computer can choose one of the three options' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer has chosen: '
  end

end

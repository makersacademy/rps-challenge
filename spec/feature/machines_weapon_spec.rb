feature 'choose weapon' do
  scenario 'players select their weapon' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Machine has chosen'
  end
end

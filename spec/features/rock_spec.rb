feature 'Rock move' do
  scenario 'Players attacks with Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('Valentina: Rock')
  end
end

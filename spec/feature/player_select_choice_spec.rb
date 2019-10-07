feature 'Player makes choice' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Sean selected Rock'
  end
end

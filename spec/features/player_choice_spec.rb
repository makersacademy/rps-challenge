feature 'Player Choice' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Battle'
    expect(page).to have_content 'Dave used Rock'
  end
end

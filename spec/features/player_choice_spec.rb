feature 'Player Choice' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Battle'
    expect(page).to have_content 'Dave attacked Deep Blue with Rock'
  end
end

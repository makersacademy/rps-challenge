feature 'Player choice' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    visit '/rock'
    expect(page).to have_content 'Dave chose Rock'
  end
end

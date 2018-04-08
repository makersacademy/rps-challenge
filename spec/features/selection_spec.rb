feature 'Selection' do
  scenario 'Can go back to make another selection after making an invalid selection' do
    sign_in_and_play
    fill_in 'choice', with: 'apple'
    click_button 'Go!'
    click_button 'Back'
    expect(page).to have_content 'Hi Andrew, let\'s play!'
  end
end

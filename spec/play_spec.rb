feature 'throwdown' do
  scenario 'should return string to confirm choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Joe throws Rock. Computer throws Rock'
  end
end

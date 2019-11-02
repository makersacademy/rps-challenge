feature 'getting a confirmation' do
  scenario 'shown what you picked' do
    sign_in_and_go
    select('Rock', from: 'rps_moves')
    click_button 'Submit'
    expect(page).to have_content 'You chose Rock'
  end
end

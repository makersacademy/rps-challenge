feature 'new round' do
  scenario 'starts a new round' do
    sign_in_with_name
    click_button 'Rock'
    click_button 'New round!'
    expect(page).to have_button('Rock')
  end
end

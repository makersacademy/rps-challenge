feature 'player enters name and it is saved' do
  scenario 'user enters name in form and is greeted with name' do
    visit '/'
    fill_in 'name', with: 'sam'
    click_button 'start'
    expect(page).to have_content 'sam'
  end
end

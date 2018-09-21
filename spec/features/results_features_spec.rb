feature 'display choice' do
  scenario 'show\'s player\'s choice' do
    visit '/'
    within('form') do
      fill_in 'name', with: 'Name'
      click_button 'Submit'
    end
    within('form') do
      choose('Rock')
      click_button 'Submit'
    end
    expect(page).to have_content("Rock")
  end
end

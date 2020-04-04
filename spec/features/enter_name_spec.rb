feature 'Enter Name' do
  scenario 'Enter Dave and submit, see Dave' do
    visit '/'
    fill_in('name', with: 'Dave')
    click_button('Go!')
    expect(page).to have_content 'Dave'
  end

  scenario 'Enter Jim and submit, see Jim' do
    visit '/'
    fill_in('name', with: 'Jim')
    click_button('Go!')
    expect(page).to have_content 'Jim'
  end
end

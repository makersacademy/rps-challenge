feature 'Entering names' do

  scenario 'You can enter your name' do
    visit '/'
    fill_in('Name', with: 'Dicky Brush')
    click_button('Submit')
    expect(page).to have_content "It's Hugh against Computer"
  end
end

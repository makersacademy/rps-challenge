feature 'enter names' do
  scenario 'greets player by name after name is entered' do
    visit '/'
    fill_in('name', with: 'Ginevra Weasley')
    click_button('Enter')
    expect(page).to have_content 'Welcome Ginevra Weasley'
  end
end

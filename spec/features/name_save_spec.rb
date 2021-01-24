feature 'register name' do
  scenario 'see confirmation' do
    visit('/')
    fill_in('name', with: 'Anna')
    click_button('Create Player')
    expect(page).to have_content "Anna is playing RPS!"
  end
end

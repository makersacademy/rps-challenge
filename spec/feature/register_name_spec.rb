
feature 'User can register her name' do

  scenario 'user fills in her name' do
    visit '/'
    fill_in :user, with: 'Ana'
    click_button('Register')
    expect(page).to have_content("Player's name is Ana")
  end

end

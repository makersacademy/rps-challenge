feature 'display name' do

  scenario 'can display name after entering it' do

    visit('/')
    fill_in :name, with: 'Jess'
    click_button 'submit'
    expect(page).to have_content 'Welcome, Jess'

  end

end

feature 'display name' do

  scenario 'can display name after entering it' do

    select_sp_and_sign_in
    expect(page).to have_content 'Welcome, JESS'

  end

end

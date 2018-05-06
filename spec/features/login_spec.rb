feature 'check login', :feature do

  scenario 'user logs in' do
    sign_in
    expect(page).to have_content("Hey there George!")
  end

  scenario 'user already logged in' do
    sign_in
    visit '/'
    expect(page).to have_content("Hey there George!")
  end
end

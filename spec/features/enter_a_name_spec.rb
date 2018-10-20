feature 'User is asked for one name' do

  scenario '' do
    visit '/'
    find_button('One').click
    expect(page).to have_content "please enter your name"
  end
end

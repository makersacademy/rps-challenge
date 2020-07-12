feature 'Enter name' do
  scenario 'User can enter name and see it' do
    sign_in
    expect(page).to have_content 'Welcome Catriona!'
    expect(page).to have_content 'To play, please click on your choice'
  end
end

feature 'Allowing a user to enter their name to play RPS' do
  scenario 'Making sure there is a form for a user to enter their name' do
    visit '/'
    expect(page).to have_field('Name')
  end
  scenario 'Ensuring that the user is able to submit their name' do
    visit '/'
    expect(page).to have_button('Let\'s play!')
  end
end

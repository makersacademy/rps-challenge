feature 'Register name' do
  scenario 'marketeer is registering his/her name' do
    register_name
    expect(page).to have_content('Hello Alex!')
  end
end

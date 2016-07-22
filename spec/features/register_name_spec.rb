feature 'Register name' do
  scenario 'user registers name' do
    visit '/'
    fill_in :name, with: 'Mali'
    click_button 'Lets go!'
  end
end

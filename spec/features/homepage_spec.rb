feature 'initial sign in' do
  scenario 'user signs in with their name' do
    visit '/'
    fill_in 'name', :with => 'Steph'
    click_button 'Play!'
    expect(page).to have_content 'Steph'
  end
end

feature 'initial sign in' do
  scenario 'user signs in with their name' do
    visit '/'
    fill_in 'name', :with => 'Steph'
    click_button 'Play!'
    expect(page).to have_content 'Steph'
  end

  scenario 'user chooses rock' do
    visit '/'
    fill_in 'name', :with => 'Steph'
    click_button 'Play!'
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end

end

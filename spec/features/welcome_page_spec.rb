feature 'welcome page' do

  scenario 'welcome page has button inviting user to play' do
    visit "/"
    expect(page).to have_button 'Play!'
  end

  scenario 'play button leads to name entry form' do
    visit '/'
    click_button 'Play!'
    expect(page).to have_content 'Enter name:'
  end

end

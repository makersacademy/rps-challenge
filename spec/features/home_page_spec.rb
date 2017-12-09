feature 'home page' do

  scenario 'welcome page has button inviting user to play' do
    visit "/"
    expect(page).to have_button 'Play!'
  end

end

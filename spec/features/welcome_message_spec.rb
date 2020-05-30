feature 'welcome' do
  
  scenario 'page displays a welcome page for the RPS game' do
    visit('/')
    expect(page).to have_content "Hello"
  end

end
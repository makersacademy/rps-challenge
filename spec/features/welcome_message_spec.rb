feature 'welcome page' do 
  scenario 'player sees welcome message' do  
    visit('/')
    expect(page).to have_content 'Welcome to rock paper scissors'
  end 
end 
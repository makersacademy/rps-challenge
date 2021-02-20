feature 'Greets a player' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors!'
  end
end

feature 'Player name' do 
  scenario 'Ask player to provide a name' do 
    visit('/')
    expect(page).to have_content 'What is your name?'
  end
end 

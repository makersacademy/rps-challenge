feature 'hompeage' do 
  scenario 'choose multiplayer' do 
    visit '/'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors'
  end
end

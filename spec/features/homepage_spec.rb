feature 'testing homepage' do
  scenario 'Greets user' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock Paper Scissors!'
  end

  scenario 'Asks user to enter their name' do
    visit('/')
    expect(page).to have_content 'Enter name:'
  end
end

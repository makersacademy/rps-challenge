feature 'Testing Setup' do
  scenario 'Can run app and check page has content' do
    visit ('/')
    expect(page).to have_content "Hello RPS!!"
  end
end

feature 'Welcome page' do
  scenario 'Visitor recieves message' do
    visit ('/')
    expect(page). to have_content "Lets play Rock, Paper, Scissors"
    expect(page). to have_content "Enter your name to begin"
  end
end
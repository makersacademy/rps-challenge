feature 'Testing infrastructure' do

  scenario 'Visits the route to make sure it exists' do
    visit('/')
    expect(page).to have_content 'Greetings, warrior. Register below:'
  end

end

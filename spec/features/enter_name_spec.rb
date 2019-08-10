feature 'user enters name' do
  scenario 'user visits site' do
    visit '/'
    expect(page).to have_content "To start the game, please enter your name:"
  end
end

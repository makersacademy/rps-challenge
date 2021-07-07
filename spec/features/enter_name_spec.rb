feature 'user enters name' do
  scenario 'user visits site' do
    visit '/'
    expect(page).to have_content "To start the game, please enter your name:"
  end
  scenario 'user inputs name' do
    user_inputs_name
    expect(page).to have_content "Time to play Dave!"
  end
end

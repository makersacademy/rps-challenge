feature 'testing infrastructure' do
  scenario 'run app and display content' do
    visit('/')
    expect(page).to have_content("Can you defeat the bot? BO5!")
  end
end
feature 'Input your name' do
  scenario 'Before starting the game, ask for your name' do
    visit '/'
    expect(page).to have_content 'insert your name'
  end
end

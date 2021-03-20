feature 'homepage' do
  scenario 'should ask the player for their name' do
    visit '/'
    expect(page).to have_content 'What is your name?'
  end
end
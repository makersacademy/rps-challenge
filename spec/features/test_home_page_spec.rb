feature 'general test' do
  scenario 'running app and checking home page' do
    visit ('/')
    expect(page).to have_content("Rock-Paper-Scissors! GAME!")
  end
end

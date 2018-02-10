feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Rock Paper Scissors")
  end
end

feature 'Enter players name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Ben vs Computer'
  end
end

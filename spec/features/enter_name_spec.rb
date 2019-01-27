feature 'Can submit player name' do
  scenario 'check to submit player name' do
    visit('/')
    include sign_in_and_play
    expect(page).to have_content 'Player: James'
end

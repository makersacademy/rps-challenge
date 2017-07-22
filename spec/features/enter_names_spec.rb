feature 'Enter player name' do
  scenario 'submitting player name' do
    sign_in_and_play
    expect(page).to have_content 'Name One vs. MacBook Pro'
  end
end

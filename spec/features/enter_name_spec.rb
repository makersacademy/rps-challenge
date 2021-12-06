feature 'Enter Names' do
  scenario 'submitting player name' do
    sign_in_and_play
    expect(page).to have_content 'James vs Computer'
  end
end
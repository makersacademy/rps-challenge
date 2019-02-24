feature 'Enter names' do
  scenario 'submitting player name' do
    sign_in
    expect(page).to have_content 'Simona, do you want to play?'
  end
end

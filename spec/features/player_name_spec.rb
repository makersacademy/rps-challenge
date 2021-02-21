feature 'Test input' do
  scenario 'enter player names' do
    sign_in_and_play
    expect(page).to have_content 'Adam, choose your fate.'
  end
end

feature 'Entering the name' do
  scenario 'user types name' do
    sign_in_and_play
    expect(page).to have_content 'Hello Harry!'
  end
end

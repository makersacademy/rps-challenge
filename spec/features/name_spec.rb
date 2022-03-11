feature 'name storage' do
  scenario 'name input is stored and printed for user' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Harry!'
  end
end

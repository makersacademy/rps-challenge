feature 'entering name' do
  scenario 'users enters their name' do
    sign_in_and_play
    expect(page).to have_content "Charlie"
  end
end

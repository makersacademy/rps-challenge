feature 'Adding name' do
  scenario 'Type name' do
    sign_in_and_play
    expect(page).to have_content "Welcome, Chuka!"
  end
end

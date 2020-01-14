feature 'Enter names' do
  scenario 'Register my name before playing' do
    sign_in_and_play
    expect(page).to have_content "Dave vs. Computer"
  end
end

feature 'Player registration' do
  scenario 'Submit name' do
    sign_in_and_play
    expect(page).to have_content 'Lucy vs. Computer'
  end
end

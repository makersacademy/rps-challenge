feature 'register name' do
  scenario 'see confirmation' do
    sign_in_and_play
    expect(page).to have_content "Anna is playing RPS!"
  end
end

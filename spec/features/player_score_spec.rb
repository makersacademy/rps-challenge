feature 'View Score' do
  scenario 'views score so far for player' do
    sign_in_and_play
    expect(page).to have_content "Dave's Score: 1 point"
  end
end

feature 'Testing name entering' do
  scenario 'Allow player to enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to Rock Paper Scissors Ali'
  end
end
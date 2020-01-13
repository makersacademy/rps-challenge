feature 'View Score' do
  scenario 'views score so far for player' do
    sign_in_and_play
    choose(option: 'rock')
    click_button 'OK'
    expect(page).to have_content "Dave's Score: 1 point"
  end
end

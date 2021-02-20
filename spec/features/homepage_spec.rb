feature 'homepage' do

  scenario 'welcomes the player' do
    visit '/'
    expect(page).to have_content "Welcome to Rock Paper Scissors"
  end

  scenario 'takes players name' do
    sign_in_and_play
    expect(page).to have_content "Hi Pete!"
  end

end

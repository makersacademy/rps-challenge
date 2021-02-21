feature 'homepage' do

  scenario 'asks for players name' do
    visit '/'
    expect(page).to have_content "What is your name?"
  end

  scenario 'takes players name' do
    sign_in_and_play
    expect(page).to have_content "Welcome Pete!"
  end

end

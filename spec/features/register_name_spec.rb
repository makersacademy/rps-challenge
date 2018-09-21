feature 'landing page' do
  scenario 'Welcome message' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end

  scenario 'updates form and registers player' do
    visit('/')
    fill_in('name', with: "SHWETA")
    click_button "Start game!"
    expect(page).to have_content 'Welcome : SHWETA!'
  end

  scenario 'Player chooses move and gets confirmation' do
    visit('/')
    fill_in('name', with: "SHWETA")
    click_button 'Start game!'
    choose 'rock'
    click_button 'Submit'
    # save_and_open_page
    expect(page).to have_content "SHWETA chose rock!"
  end
end
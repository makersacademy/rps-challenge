feature 'user can choose between rock, paper, and scissors' do
  scenario 'user clicks rock and gets a notification' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Win chose Rock!"
  end

  scenario 'user clicks paper and gets a notification' do
    visit('/')
    fill_in :name, with: 'Win'
    click_button "Go!"
    click_button "Paper"
    expect(page).to have_content "Win chose Paper!"
  end

  scenario 'user clicks scissors and gets a notification' do
    visit('/')
    fill_in :name, with: 'Win'
    click_button "Go!"
    click_button "Scissors"
    expect(page).to have_content "Win chose Scissors!"
  end
end
feature "Rock Paper Scissors Game" do
  scenario "visiting the homepage" do
    visit '/'
    expect(page).to have_content 'RPS GAME'
    expect(page).to have_content 'Enter your name'
  end

  scenario "Submit your name" do
    visit '/'
    fill_in 'name', with: "Paul Dirac"
    click_button 'Go!'
    expect(page).to have_content 'Hi Paul Dirac! make your choice:'
  end
end
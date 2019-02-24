feature "Homepage" do
  scenario "shows player form" do
    visit '/'
    expect(page).to have_content "Rock, Paper or Scissors?"
    expect(page).to have_content "P1"
  end
end

feature "displays name" do
  scenario "shows name" do
    visit '/'
    fill_in :name, with: "Bob"
    click_button 'Submit'
    expect(page).to have_content "Time to decide Bob"
  end
end

feature "Player doesnt choose R,P or S" do
  scenario "shows did not choose a selection" do
    visit '/'
    fill_in :name, with: "Bob"
    click_button 'Submit'
    click_button 'RPS Submit'
    expect(page).to have_content "You did not choose /:("
  end
end

feature "Player chooses R,P or S" do
  scenario "shows win,loss or draw" do
    visit '/'
    fill_in :name, with: "Bob"
    click_button 'Submit'
    choose(option:'Paper')
    click_button 'RPS Submit'
    expect(page).to have_content "BOB WINS" or "Computer Wins..." or "Draw *Cowboy noise in the background*"
  end
end

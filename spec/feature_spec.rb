feature "PVP play" do
  scenario "can play a PVP game" do
    visit('/')
    click_button 'Two Players'
    fill_in 'player1_name', with: 'Zi'
    fill_in 'player2_name', with: 'Paul'
    click_button 'Submit'
    select "Rock", from: "weapon", :match => :first
    click_button 'Submit'
    select "Rock", from: "weapon", :match => :first
    click_button 'Submit'
    expect(page).to have_content "You have drawn"
  end
end

feature "CPU play" do
  scenario "can play a game vs the computer" do
    srand(1)
    visit('/')
    click_button 'Single Player'
    fill_in 'player1_name', with: 'Zi'
    click_button 'Submit'
    select "Rock", from: "weapon", :match => :first
    click_button 'Submit'
    expect(page).to have_content "Zi wins!"
  end
end

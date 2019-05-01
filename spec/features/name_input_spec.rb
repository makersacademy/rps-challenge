require_relative 'web_helpers'

feature "Name input page" do
  scenario "can have a name entered into a form" do
    visit '/'
    click_button 'Enter'
    fill_in :player1_name, with: "Dave"
    expect(page).to have_button "Play"
  end

  scenario "multiplayer option can have a names entered into a form" do
    visit "/"
    select "Multiplayer", :from => "play_mode"
    click_button "Enter"
    fill_in :player1_name, with: "Dave"
    fill_in :player2_name, with: "Tim"
    click_button "Play"
    expect(page).to have_content "Dave vs Tim"
  end
end

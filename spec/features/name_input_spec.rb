require_relative 'web_helpers'

feature "Name input page" do
  scenario "can have a name entered into a form" do
    move_past_welcome
    fill_in :player1_name, with: "Dave"
    click_button "Play"
  end
end

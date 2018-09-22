require_relative 'web_helpers'

feature "Winner page" do
  scenario "displays the winner" do
    from_welcome_to_winner
    expect(page).to have_content "And the winner is"
  end
end

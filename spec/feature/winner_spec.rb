require_relative "../../lib/app"

feature "a winner is declared" do
  scenario "go to play page, choose rock, then see winner confirmation" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content(/It's\sa\sDraw!|You\swon!|The\scomputer\swon!/)
  end
end

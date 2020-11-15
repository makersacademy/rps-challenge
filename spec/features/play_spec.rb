#the marketeer will be presented the choices (rock, paper and scissors)

feature "playing" do
  scenario "presented with the different choices" do
    register_and_play
    expect(page).to have_link("Rock", href: "/game?option=rock")
    expect(page).to have_link("Paper", href: "/game?option=paper")
    expect(page).to have_link("Scissors", href: "/game?option=scissors")
  end
end

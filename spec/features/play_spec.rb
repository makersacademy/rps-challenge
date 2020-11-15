feature "playing" do
  scenario "presented with the different choices" do
    register_and_play
    expect(page).to have_link(nil, href: "/game?option=rock")
    expect(page).to have_link(nil, href: "/game?option=paper")
    expect(page).to have_link(nil, href: "/game?option=scissors")
    expect(page).to have_link(nil, href: "/game?option=spock")
    expect(page).to have_link(nil, href: "/game?option=lizard")
  end

  scenario "player choose rock" do
    register_and_play
    click_link(nil, href: "/game?option=rock")
    expect(page).to have_content 'John chose rock'
  end
end

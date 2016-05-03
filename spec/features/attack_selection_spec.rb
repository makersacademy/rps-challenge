
feature "Displays selected action on next page" do

  scenario "clicking rock button displays player selection" do
    p1_wins_vs_pc
    message = "Wayne Played:\nrock"
    expect(page).to have_content message
  end

  scenario "clicking rock button displays player selection" do
    p1_wins_vs_p2
    message = "Wayne Played:\nrock"
    expect(page).to have_content message
  end

end

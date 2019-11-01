feature "move" do
  scenario "getting move from player 1 " do
    sign_in_and_play
    click_link "Enter Move"
    fill_in :move, with: "Rock"
    expect(@move).to eq "Rock"
  end
end

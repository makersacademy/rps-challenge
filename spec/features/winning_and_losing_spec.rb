feature "can win/loose/draw" do

  scenario "player_1 will win" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    log_in_and_choose
    expect(page).to have_content "Billy has emerged victorious against Cpu"
    expect(page).to have_content "Billy picked scissors Cpu picked paper"
  end

  scenario "player_1 will loose" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    log_in_and_choose
    expect(page).to have_content "Cpu has emerged victorious against Billy"
    expect(page).to have_content "Billy picked scissors Cpu picked rock"
  end

  scenario "player_1 will draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    log_in_and_choose
    expect(page).to have_content "Billy has drawn against Cpu"
    expect(page).to have_content "Billy picked scissors Cpu picked scissors"
  end

end

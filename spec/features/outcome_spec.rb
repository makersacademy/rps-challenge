feature "Outcome" do
  scenario 'should display correct win sequence' do
    expect_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Paper beats rock"
  end

  scenario 'should display correct winner' do
    expect_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "You won!"
  end

  scenario 'should display if end is tie' do
    expect_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "It's a tie"
  end
end

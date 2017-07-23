feature 'increasing points' do
  scenario "player's points increase by 10 when they win a round" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    click_button 'OK'
    expect(page).not_to have_content 'Fred has 0 points'
    expect(page).to have_content 'Fred has 10 points'
  end
end

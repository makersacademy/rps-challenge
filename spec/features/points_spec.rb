feature 'viewing points' do
  scenario "the player can view their points" do
    sign_in_and_play
    expect(page).to have_content 'Fred has 0 points'
  end

  scenario "the player can view the computer's points" do
    sign_in_and_play
    expect(page).to have_content 'The Computer has 0 points'
  end
end

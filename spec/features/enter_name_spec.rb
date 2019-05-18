feature 'Name entry' do
  scenario "player's name is displayed after submission" do
    sign_in_and_play

    expect(page).to have_content('Alice vs. Computer')
  end
end

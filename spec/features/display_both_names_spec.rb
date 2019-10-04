feature 'display both names' do

  scenario "it will display the name of player 1 and player 2" do
    select_mp_and_sign_in
    expect(page).to have_content ("Welcome, JESS and BOB")
  end

end

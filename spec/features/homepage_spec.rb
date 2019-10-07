feature 'Challenge Master Control Program' do

  scenario "players fill in their names in a form" do
    sign_in_and_play
    expect(page).to have_content("Tron")
  end

end

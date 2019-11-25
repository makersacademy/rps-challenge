feature "Testing input from players" do
  scenario 'Display players names' do
    visit('/')
    fill_in "Player", :with => "Anna"
    click_button "Submit"
    # expect(status_code).to eq 200
    expect(page).to have_content "Player is Anna"

  end
end

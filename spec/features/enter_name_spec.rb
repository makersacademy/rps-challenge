feature 'Enter Name' do
  scenario "Submitting Player's Name" do
    sign_in_and_play
    expect(page).to have_content 'Jack vs. COMPUTER'
  end
end

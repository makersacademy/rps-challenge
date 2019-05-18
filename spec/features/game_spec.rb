feature 'Game' do
  scenario 'play' do
    visit('/')
    fill_in :player, with: "Vlad"
    click_button "Submit"
    select("Rock", :from => "What would you like to play with?")
    click_button "Play"
    expect(page).to have_content "Vlad vs. A.I."
  end
end

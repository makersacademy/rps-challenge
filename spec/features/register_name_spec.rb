feature "register name" do
  scenario "Expect marketeer to be able to register their name" do
    visit '/'
    fill_in :name, with: 'Peter'
    click_on 'Submit'

    expect(page).to have_content 'Player: Peter'
  end
end
feature 'Displays names as appropriate' do
  scenario 'displays both names when two players are playing' do
    sign_in_and_submit
    expect(page).to have_content "James Vs. Mary"
  end
end

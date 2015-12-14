feature "allow user to choose 1 or 2 players" do
  scenario 'choose one player' do
    visit '/'
    expect(page).to have_content"How many we got playin' today?"
  end
end

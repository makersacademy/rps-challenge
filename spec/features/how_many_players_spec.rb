feature 'How many players' do

  before do
    visit '/'
  end

  scenario 'should be asked how many players you would like' do
    expect(page).to have_content "How many players would you like?"
  end

  scenario 'can select 1 player' do
    find_button("One").click
  end

  scenario 'can select 2 players' do
    find_button("Two").click
  end
end

feature 'entering a name' do
  before do
    visit '/'
  end

  scenario 'user enters their name' do
    fill_in "name_1", with: "John"
  end

  scenario 'user submits their name and arrives at the play page' do
    enter_name_and_play
    expect(page).to have_current_path "/play"
  end
end

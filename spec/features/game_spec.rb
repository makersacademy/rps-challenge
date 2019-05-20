feature 'Game' do

  scenario "select player weapon" do
    sign_in_and_play
    expect(page).to have_selector(:select, 'Scissors')
  end

end

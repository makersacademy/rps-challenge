feature 'enter name in single player mode' do
  scenario 'submitting name' do
    single_player
    expect(page).to have_content 'Unicorn vs. Hal3000'
  end
end

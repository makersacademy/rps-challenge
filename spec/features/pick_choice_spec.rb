feature 'Pick option' do
  scenario 'When player chooses option should show the option on the page' do
    visit('/play')
    choose('rock')
    expect(page).to have_content 'You chose rock'
  end
end

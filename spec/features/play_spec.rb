feature 'player can choose rock/paper/scissors' do
  before(:example) { sign_in }
  after(:example) { visit('/') }
  scenario 'player chooses rock' do
    choose('rock')
    click_on("Submit")
    expect(page).to have_content "You chose Rock"
  end
  scenario 'player chooses paper' do
    choose('paper')
    click_on("Submit")
    expect(page).to have_content "You chose Paper"
  end
  scenario 'player chooses scissors' do
    choose('scissors')
    click_on("Submit")
    expect(page).to have_content "You chose Scissors"
  end
end

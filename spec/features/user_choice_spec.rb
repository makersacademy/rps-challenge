feature 'user picks a choice' do
  before(:all) do
    Capybara.current_driver = :selenium
  end
  xscenario 'when rock is the choice' do
    sign_in_and_play
    # find('input#rock').click
    click_button 'Submit', :visible => false
    expect(page).to have_content "Yoda, you picked rock"
  end
  after(:all) do
    Capybara.use_default_driver
  end
end

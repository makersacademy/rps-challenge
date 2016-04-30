require './spec/features/web_helpers'

feature 'Play' do
  scenario 'Rock is checked by default' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose("scissors")
    click_button 'Proceed'
    expect(page).to have_content "The computer chose"
  end

  scenario 'Can only select one answer' do
    sign_in
    choose("rock")
    choose("scissors")
    expect(find_field("rock")).not_to be_checked
    expect(find_field("scissors")).to be_checked
  end

  scenario 'Can select Paper' do
    sign_in
    choose("paper")
    expect(find_field("paper")).to be_checked
  end

  scenario 'Clicking proceed displays your choice' do
    sign_in
    choose("scissors")
    click_button 'Proceed'
    expect(page).to have_content "You chose Scissors"
  end


end

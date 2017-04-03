feature 'Player Choice' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Battle'
    expect(page).to have_content 'Dave used Rock'
  end

  scenario 'Player chooses Paper' do
    sign_in_and_play
    select "Paper", :from => "action"
    click_button 'Battle'
    expect(page).to have_content 'Dave used Paper'
  end

  scenario 'Player chooses Scissors' do
    sign_in_and_play
    select "Scissors", :from => "action"
    click_button 'Battle'
    expect(page).to have_content 'Dave used Scissors'
  end
end

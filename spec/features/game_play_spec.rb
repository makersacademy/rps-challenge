feature 'Playing the game' do
  scenario 'See the shape options' do
    sign_in_and_play
    expect(page).to have_selector '#rock'
    expect(page).to have_selector '#paper'
    expect(page).to have_selector '#scissors'
  end

  scenario 'Choose rock and page shows rock has been chosen' do
    sign_in_and_play
    click_link('', :href => %q{/user_chooses_rock})
    expect(page).to have_content 'User chooses Rock'
  end

  scenario 'Choose paper and page shows paper has been chosen' do
    sign_in_and_play
    click_link('', :href => %q{/user_chooses_paper})
    expect(page).to have_content 'User chooses Paper'
  end

  scenario 'Choose scissors and page shows scissors has been chosen' do
    sign_in_and_play
    click_link('', :href => %q{/user_chooses_scissors})
    expect(page).to have_content 'User chooses Scissors'
  end

  scenario 'Shows a random computer choice has been chosen' do
    sign_in_and_play
    click_link('', :href => %q{/user_chooses_scissors})
    message = find(:css, "#action-message").text
    expect(possible_messages).to include message
  end

end
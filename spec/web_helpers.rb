def startup
  visit '/'
  fill_in('PlayerName', with: 'John')
  click_button('Go!')
end

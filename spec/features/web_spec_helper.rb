def sign_in_and_select(choice=nil)
  visit '/'
  fill_in('name', with: 'Becka')
  click_on('Submit')
  click_on(choice) unless choice.nil?
end

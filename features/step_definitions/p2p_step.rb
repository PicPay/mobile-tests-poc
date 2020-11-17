# frozen_string_literal: true
  
  Given('that you log in with {string} and {string}') do |user, pass|
    # find_by_text('Entendi').click
    find_element(xpath: "//*[contains(@text, 'Entendi')]").click
    @screen.transferp2p.login(user, pass)
  end
  
  Then('I should see the home page') do
    @screen.transferp2p.validateHomePage
  end

  Then('choose anyone to pay') do
    @screen.transferp2p.choose_anyone_2_pay
  end
  
  Then('insert any amount > than zero') do
    pending # Write code here that turns the phrase above into concrete actions
  end
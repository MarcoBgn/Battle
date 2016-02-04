require 'capybara/rspec'
require 'web_helpers'

Capybara.configure do |config|
 
 config.default_driver = :selenium
 config.app            = 'Battle'
 config.app_host       = "http://localhost:4567"
 
end


feature 'Players names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Marco vs. Matt'
  end
end

feature 'Hit Points' do
  scenario 'displayed on screen' do
    sign_in_and_play
    expect(page).to have_content '40HP'
    
  end
end

feature 'Player 1 attacking' do
  scenario 'Player 2' do
    sign_in_and_play
    click_button('Attack')
    visit('/attack')
    expect(page).to have_content 'Marco successfully attacked Matt!'
  end
end
    
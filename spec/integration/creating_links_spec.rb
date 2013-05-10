require 'spec_helper'

feature 'Creating Links' do
  scenario "can create a link" do
    visit '/'
    click_link 'New Link'
    fill_in 'URL', :with => 'http://www.google.com'
    fill_in 'Title', :with => 'Google'
    click_button 'Create Link'
    page.should have_content('Link has been created')
  end
end
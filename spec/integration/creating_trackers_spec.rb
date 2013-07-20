require 'spec_helper'

feature 'Creating Trackers' do
  scenario "can create a tracker" do
    visit '/'
    click_link 'New Tracker'
    fill_in 'Date', :with => 'TextMate 2'
    fill_in 'Description', :with => "A text-editor for OS X"
    click_button 'Create Tracker'
    page.should have_content('Tracker has been created.')
  end
end
require 'integration_spec_helper'

describe 'API impression' do
  before do
    @k1 = FactoryGirl.create(:keyword, name: 'key 1')
  end

  it 'track impression' do
    visit api_v1_keyword_path(@k1)

    page.should have_content("impressions_counts")
  end

  it 'track click' do
    visit api_v1_click_keyword_path(@k1)

    page.should have_content("click_counts")
  end
end
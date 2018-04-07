require 'rails_helper'

RSpec.describe "entrances/index", type: :view do
  before(:each) do
    assign(:entrances, [
      Entrance.create!(
        :number => 2
      ),
      Entrance.create!(
        :number => 2
      )
    ])
  end

  it "renders a list of entrances" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

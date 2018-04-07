require 'rails_helper'

RSpec.describe "entrances/edit", type: :view do
  before(:each) do
    @entrance = assign(:entrance, Entrance.create!(
      :number => 1
    ))
  end

  it "renders the edit entrance form" do
    render

    assert_select "form[action=?][method=?]", entrance_path(@entrance), "post" do

      assert_select "input[name=?]", "entrance[number]"
    end
  end
end

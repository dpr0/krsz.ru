require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      :street => "MyString",
      :number => "MyString"
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "input[name=?]", "house[street]"

      assert_select "input[name=?]", "house[number]"
    end
  end
end

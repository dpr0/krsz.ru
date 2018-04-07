require 'rails_helper'

RSpec.describe "entrances/show", type: :view do
  before(:each) do
    @entrance = assign(:entrance, Entrance.create!(
      :number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end

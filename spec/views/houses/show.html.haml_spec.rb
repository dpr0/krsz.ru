require 'rails_helper'

RSpec.describe "houses/show", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      :street => "Street",
      :number => "Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Number/)
  end
end

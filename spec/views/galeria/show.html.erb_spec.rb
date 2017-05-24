require 'rails_helper'

RSpec.describe "galeria/show", type: :view do
  before(:each) do
    @galerium = assign(:galerium, Galerium.create!(
      :nome => "Nome",
      :id_usuario => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(//)
  end
end

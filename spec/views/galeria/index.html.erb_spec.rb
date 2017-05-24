require 'rails_helper'

RSpec.describe "galeria/index", type: :view do
  before(:each) do
    assign(:galeria, [
      Galerium.create!(
        :nome => "Nome",
        :id_usuario => ""
      ),
      Galerium.create!(
        :nome => "Nome",
        :id_usuario => ""
      )
    ])
  end

  it "renders a list of galeria" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

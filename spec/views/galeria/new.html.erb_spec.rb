require 'rails_helper'

RSpec.describe "galeria/new", type: :view do
  before(:each) do
    assign(:galerium, Galerium.new(
      :nome => "MyString",
      :id_usuario => ""
    ))
  end

  it "renders new galerium form" do
    render

    assert_select "form[action=?][method=?]", galeria_path, "post" do

      assert_select "input#galerium_nome[name=?]", "galerium[nome]"

      assert_select "input#galerium_id_usuario[name=?]", "galerium[id_usuario]"
    end
  end
end

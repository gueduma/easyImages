require 'rails_helper'

RSpec.describe "galeria/edit", type: :view do
  before(:each) do
    @galerium = assign(:galerium, Galerium.create!(
      :nome => "MyString",
      :id_usuario => ""
    ))
  end

  it "renders the edit galerium form" do
    render

    assert_select "form[action=?][method=?]", galerium_path(@galerium), "post" do

      assert_select "input#galerium_nome[name=?]", "galerium[nome]"

      assert_select "input#galerium_id_usuario[name=?]", "galerium[id_usuario]"
    end
  end
end

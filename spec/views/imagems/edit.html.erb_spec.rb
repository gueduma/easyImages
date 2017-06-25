require 'rails_helper'

RSpec.describe "imagems/edit", type: :view do
  before(:each) do
    @imagem = assign(:imagem, Imagem.create!(
      :nome => "MyString",
      :url => "MyString",
      :tamanho => 1.5,
      :id_usuario => "",
      :publico => false,
      :extensao => "MyString"
    ))
  end

  it "renders the edit imagem form" do
    render

    assert_select "form[action=?][method=?]", imagem_path(@imagem), "post" do

      assert_select "input#imagem_nome[name=?]", "imagem[nome]"

      assert_select "input#imagem_url[name=?]", "imagem[url]"

      assert_select "input#imagem_tamanho[name=?]", "imagem[tamanho]"

      assert_select "input#imagem_id_usuario[name=?]", "imagem[id_usuario]"

      assert_select "input#imagem_publico[name=?]", "imagem[publico]"

      assert_select "input#imagem_extensao[name=?]", "imagem[extensao]"
    end
  end
end

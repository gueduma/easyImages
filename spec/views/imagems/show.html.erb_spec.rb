require 'rails_helper'

RSpec.describe "imagems/show", type: :view do
  before(:each) do
    @imagem = assign(:imagem, Imagem.create!(
      :nome => "Nome",
      :url => "Url",
      :tamanho => 2.5,
      :id_usuario => "",
      :publico => false,
      :extensao => "Extensao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Extensao/)
  end
end

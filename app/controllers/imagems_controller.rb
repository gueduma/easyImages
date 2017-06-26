class ImagemsController < ApplicationController
  before_action :set_imagem, only: [:show, :edit, :update, :destroy]

  # GET /imagems
  # GET /imagems.json
  def index
    @imagems = Imagem.where(:id_usuario => session[:user_id])
    @hgaleria = Hash.new
    all_gal = Galerium.where(:id_usuario => session[:user_id])
    all_gal.each do |galeria|
      @hgaleria[galeria.id] = galeria.nome
    end
    
    @htags = Hash.new
    @imagems.each do |img|
      all_img_tags = TagImage.where(:id_image => img.id)
      all_img_tags.each do |tag|
        img_tag = Tag.find(tag.id_tag)
        if @htags[img.id] != nil
          @htags[img.id] = @htags[img.id] + img_tag.nome + " "
        else
          @htags[img.id] = img_tag.nome + " "
        end
      end
    end
    
  end

  # GET /imagems/1
  # GET /imagems/1.json
  def show
  end

  # GET /imagems/new
  def new
    # @imagem = Imagem.new
    @usuario = User.find(session[:user_id])
    
    # session[:usuario] = @usuario
    
    @galerias = Galerium.where(id_usuario: session[:user_id])
  
  end

  def upload
    if params.key?(:file_uploaded) == false
      redirect_to '/imagems/'
    end
    
    # Inserção de imagem
    
    img = Imagem.new nome: params[:file_uploaded].original_filename, id_usuario: session[:user_id], tamanho: params[:file_uploaded].size/1024.0, publico: params.key?(:check_publico) ? params[:check_publico] : false, extensao: ".#{params[:file_uploaded].content_type.rpartition('/').last}", id_galeria: params[:galeria]
    img.galerias = params[:file_uploaded].tempfile
    
    img.galerias.original_filename = params[:file_uploaded].original_filename
    
    puts img.galerias.file.nil?
    
    img.save!
    
    img.update(url: img.galerias.url)
    
    # Inserção de tags
    
    tags = []
    tags = params[:tags].split ","
    
  tags.each do |tag|
     if !Tag.exists?(nome: tag)
       obj_tag = Tag.new :nome => tag
       obj_tag.save
     end
     
     obj_tag = Tag.where(:nome => tag).first
     obj_tag_image = TagImage.new :id_tag => obj_tag.id, :id_image => img.id
     obj_tag_image.save
  end
    
    redirect_to new_imagem_path, notice: 'Imagem cadastrada com sucesso.'
  end
  # GET /imagems/1/edit
  def edit
  end

  # POST /imagems
  # POST /imagems.json
  def create
    @imagem = Imagem.new(imagem_params)

    respond_to do |format|
      if @imagem.save
        format.html { redirect_to new_imagem_path, notice: 'Imagem cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @imagem }
      else
        format.html { render :new }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagems/1
  # PATCH/PUT /imagems/1.json
  def update
    respond_to do |format|
      if @imagem.update(imagem_params)
        format.html { redirect_to @imagem, notice: 'Imagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagem }
      else
        format.html { render :edit }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagems/1
  # DELETE /imagems/1.json
  def destroy
    @imagem.destroy
    respond_to do |format|
      format.html { redirect_to imagems_url, notice: 'Imagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagem
      @imagem = Imagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagem_params
      params.require(:imagem).permit(:nome, :url, :data_upload, :tamanho, :id_usuario, :publico, :data_modificacao, :extensao)
    end
end

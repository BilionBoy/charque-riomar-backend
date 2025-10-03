class TiposUsuariosController < ApplicationController
  before_action :set_tipo_usuario, only: %i[ show edit update destroy ]

  # GET /tipos_usuarios or /tipos_usuarios.json
  def index
    @tipos_usuarios = TipoUsuario.all
  end

  # GET /tipos_usuarios/1 or /tipos_usuarios/1.json
  def show
  end

  # GET /tipos_usuarios/new
  def new
    @tipo_usuario = TipoUsuario.new
  end

  # GET /tipos_usuarios/1/edit
  def edit
  end

  # POST /tipos_usuarios or /tipos_usuarios.json
  def create
    @tipo_usuario = TipoUsuario.new(tipo_usuario_params)

    respond_to do |format|
      if @tipo_usuario.save
        format.html { redirect_to @tipo_usuario, notice: "Tipo usuario was successfully created." }
        format.json { render :show, status: :created, location: @tipo_usuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_usuarios/1 or /tipos_usuarios/1.json
  def update
    respond_to do |format|
      if @tipo_usuario.update(tipo_usuario_params)
        format.html { redirect_to @tipo_usuario, notice: "Tipo usuario was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @tipo_usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_usuarios/1 or /tipos_usuarios/1.json
  def destroy
    @tipo_usuario.destroy!

    respond_to do |format|
      format.html { redirect_to tipos_usuarios_path, notice: "Tipo usuario was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_usuario
      @tipo_usuario = TipoUsuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_usuario_params
      params.require(:tipo_usuario).permit(:descricao)
    end
end

class CapybarasController < ApplicationController
  before_action :set_capybara, only: %i[ show edit update destroy ]

  # GET /capybaras or /capybaras.json
  def index
    @capybaras = Capybara.all
  end

  # GET /capybaras/1 or /capybaras/1.json
  def show
  end

  # GET /capybaras/new
  def new
    @capybara = Capybara.new
  end

  # GET /capybaras/1/edit
  def edit
  end

  # POST /capybaras or /capybaras.json
  def create
    @capybara = Capybara.new(capybara_params)

    respond_to do |format|
      if @capybara.save
        format.html { redirect_to capybara_url(@capybara), notice: "Capybara was successfully created." }
        format.json { render :show, status: :created, location: @capybara }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capybara.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capybaras/1 or /capybaras/1.json
  def update
    respond_to do |format|
      if @capybara.update(capybara_params)
        format.html { redirect_to capybara_url(@capybara), notice: "Capybara was successfully updated." }
        format.json { render :show, status: :ok, location: @capybara }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capybara.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capybaras/1 or /capybaras/1.json
  def destroy
    @capybara.destroy

    respond_to do |format|
      format.html { redirect_to capybaras_url, notice: "Capybara was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capybara
      @capybara = Capybara.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capybara_params
      params.fetch(:capybara, {})
    end
end

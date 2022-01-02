class LegalTextsController < ApplicationController
  before_action :set_legal_text, only: %i[ show edit update destroy ]

  # GET /legal_texts or /legal_texts.json
  def index
    @legal_texts = LegalText.all
  end

  # GET /legal_texts/1 or /legal_texts/1.json
  def show
  end

  # GET /legal_texts/new
  def new
    @legal_text = LegalText.new
  end

  # GET /legal_texts/1/edit
  def edit
  end

  # POST /legal_texts or /legal_texts.json
  def create
    @legal_text = LegalText.new(legal_text_params)

    respond_to do |format|
      if @legal_text.save
        format.html { redirect_to legal_text_url(@legal_text), notice: "Legal text was successfully created." }
        format.json { render :show, status: :created, location: @legal_text }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @legal_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legal_texts/1 or /legal_texts/1.json
  def update
    respond_to do |format|
      if @legal_text.update(legal_text_params)
        format.html { redirect_to legal_text_url(@legal_text), notice: "Legal text was successfully updated." }
        format.json { render :show, status: :ok, location: @legal_text }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @legal_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legal_texts/1 or /legal_texts/1.json
  def destroy
    @legal_text.destroy

    respond_to do |format|
      format.html { redirect_to legal_texts_url, notice: "Legal text was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legal_text
      @legal_text = LegalText.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legal_text_params
      params.require(:legal_text).permit(:title, :content, :position, :slug)
    end
end

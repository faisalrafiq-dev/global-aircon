class FaqsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_faq, only: %i[show edit update destroy]

  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(faq_params)

    if @faq.save
      redirect_to faqs_url, notice: "Faq was successfully created."
    else
      render :index, status: :unprocessable_entity
    end
  end

  def update
    if @faq.update(faq_params)
      redirect_to faqs_url, notice: "Faq was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @faq.destroy

    redirect_to faqs_url, notice: "Faq was successfully removed."
  end

  private

  def set_faq
    @faq = Faq.find(params[:id])
  end

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end
end

class BooksController < ApplicationController
  # protect_from_forgery except: [:destroy. :update]
  before_action :set_book, only: [:show, :destroy]
  around_action :action_logger, only: [:destroy]

  def show
    # respond_to do |format|
    #   format.html {redirect_to profile_path}
    #   # format.json {render json: @book}
    # end
    render :show
    # redirect_to profile_path, status: 302
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def action_logger
    logger.info "around-before"
    yield
    logger.info "around-after"
  end
end

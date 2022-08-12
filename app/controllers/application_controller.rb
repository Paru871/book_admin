class ApplicationController < ActionController::Base
  # before_action do
  #   redirect_to access_denied_path if params[:token].blank?
  # end

  # before_action :require_login

  # def require_login
  #   # ログインを確認し、非ログイン時にリダイレクトする処理
  # end
  before_action :detect_mobile_variant

  private

  def detect_mobile_variant
    request.variant = :mobile if request.user_agent =~ /iPhone/
  end
end

class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
  def show
    @tag = Tag.find(params[:id])
  end
  def index
    @tag = Tag.all
  end
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash.notice = "Tag '#{@tag.name}' was successfully deleted!"
    redirect_to tags_path
  end
end

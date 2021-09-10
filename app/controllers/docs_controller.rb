class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]

  def index
    @docs = current_user.docs.all
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)
    @doc.user=current_user
   

    if @doc.save!
      redirect_to docs_path, notice: "The doc #{@doc.title} has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy
    redirect_to docs_path, notice: "The doc #{@doc.title} has been deleted"
  end

  def edit
  end

private
  def set_doc
      @doc = Doc.find(params[:id])
  end

  def doc_params
    params.require(:doc).permit(:title, :description, :tag1, :tag2, :attachment)
  end

end

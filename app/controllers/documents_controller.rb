class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
     @document = Document.new(doc_params)

    if @document.save
      redirect_to documents_path, notice: "The resume #{@document.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to documents_path, notice:  "The resume #{@document.name} has been deleted."
  end
  private
  def doc_params
    params.require(:document).permit(:name, :attachment)
  end
end

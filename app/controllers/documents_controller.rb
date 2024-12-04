class DocumentsController < ApplicationController
  def index
    @documents = Document.where(users: Current.user)
  end

  def new
    @document = Document.new
  end

  def show
    @document = Document.find(params[:id])
  end

  def create
    @document = Current.user.documents.build(document_params)

    if @document.save
      ConvertPdfToMarkdownJob.perform_later(@document)
      redirect_to @document, notice: "Document was successfully created."
    end
  end

  private

  def document_params
    params.require(:document).permit(:title, :pdf_file)
  end
end

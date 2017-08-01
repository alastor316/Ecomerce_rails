class LinksController < ApplicationController
  before_action :find_link
  before_action :find_attachment_link, only: :download_attachment
  before_action :validate_link
  before_action :validate_attachment_link, only: :download_attachment


def download
  @link.updated_downloads
  @product = @link.product
  @link.create_attachments_links
  @link_attachments = @link.links
end

def download_attachment
  send_file(Rails.root.join("archivos","#{@link_attachment.attachment_id}","original",@link_attachment.attachment.archivo_file_name))
end
  private

    def find_attachment_link
      @link_attachment = LinkAttachment.find(params[:attachment_id])
    end

    def validate_attachment_link
      if @link_attachment.invalid?
        redirect_to invalid_path, notice:"Expiró el tiempo para descargar este archivo"
      end
    end


    def find_link
      @link = Link.find_by(custom_id:params[:id])
    end


    def validate_link
      if @link.nil? || @link.is_invalid?
        redirect_to invalid_path, notice:"El link de descarga no es valido o a expirado"
    end
  end
end

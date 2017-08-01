class LinkMailer < ActionMailer::Base
  default from: "marceloc007@hotmail.com"
  def download_link(link)
    @link = link
    @product = link.product
    mail(to: link.email,subject:"Descarga los productos que adquiriste en Tiendus ")
  end
end

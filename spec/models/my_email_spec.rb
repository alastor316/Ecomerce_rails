require 'rails_helper'

RSpec.describe MyEmail, type: :model do
  it{ should validate_presence_of(:email).with_message("Olvidaste colocar el correo")}
  it{ should validate_uniqueness_of(:email).with_message("Este Correo ya fue registrado")}


  it "should not create with invalid email" do
  	email = MyEmail.new(email: "marcelo")
  	expect(email.valid?).to be_falsy
  end

  it "should not create with invalid email" do
  	email = MyEmail.new(email: "marcelo@domimio.com")
  	expect(email.valid?).to be_truthy
  end

end

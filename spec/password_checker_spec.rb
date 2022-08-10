require 'password_checker'

RSpec.describe PasswordChecker do
      it "accepts a password if it's 8+ characters" do
            password = PasswordChecker.new
            expect(password.check("tigranonvich")).to eq true
      end

      it "fails if the password is fewer than 8 characters" do
            password = PasswordChecker.new
            expect {password.check('trio') }.to raise_error "Invalid password, must be 8+ characters."
      end

end
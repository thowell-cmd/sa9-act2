require 'bank_account'

RSpec.describe BankAccount do
    let(:my_account) {BankAccount.new}
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        my_account.deposit(250)
        my_account.deposit(250)
        expect(my_account.balance).to eq(500)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        my_account.deposit(5)
        my_account.withdraw(1)
        expect(my_account.balance).to eq(4)
      end
  
      it "does not change the balance if insufficient funds" do
        my_account.deposit(5)
        my_account.withdraw(6)
        expect(my_account.balance).to eq(5)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        expect(my_account.balance).to eq(0)
      end
    end
  end
  
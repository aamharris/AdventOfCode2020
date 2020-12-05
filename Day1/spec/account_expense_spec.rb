require 'account_expense_utility'

describe AccountExpenseUtility do
    let(:test_file_path) { File.dirname(__FILE__) + '/fixtures/test_entries.txt' }
    describe "get_account_expense_transations" do
        it "gets file and converts to array of numbers" do
            util = AccountExpenseUtility.new
            totals = util.get_account_expense_transations(test_file_path)
            expect(totals.length).to eq(3)
            expect(totals[0]).to eq(1)
            expect(totals[1]).to eq(2)
            expect(totals[2]).to eq(3)
        end
    end

    describe "find_expenses_from_total" do
        it "find the two entries that sum to 2020" do
            expenses = [1721, 979, 366, 299, 675, 1456]
            util = AccountExpenseUtility.new
            entries_for_expense = util.find_expenses_from_total(expenses, 2020, 2)
            expect(entries_for_expense).to  contain_exactly(1721, 299)
        end

        it "find the three entries that sum to 2020" do
            expenses = [1721, 979, 366, 299, 675, 1456]
            util = AccountExpenseUtility.new
            entries_for_expense = util.find_expenses_from_total(expenses, 2020, 3)
            expect(entries_for_expense).to  contain_exactly(979, 366, 675)
        end
    end
end
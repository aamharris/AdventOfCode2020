class AccountExpenseUtility
    def get_account_expense_transations(filepath)
        file = File.open(filepath)
        file_data = file.readlines.map(&:chomp).map(&:to_i)
        return file_data
    end

    def find_expenses_from_total(all_expenses, total, number_of_expenses_expected)
        expenses_for_total = nil
        expense_combinations = all_expenses.combination(number_of_expenses_expected).to_a
        expenses_for_total = expense_combinations.find {|group| group.inject(:+) == total}
        return expenses_for_total
    end
end
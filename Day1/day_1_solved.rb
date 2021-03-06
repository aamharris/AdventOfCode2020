require './lib/account_expense_utility'

util = AccountExpenseUtility.new
expenses = util.get_account_expense_transations('./entries.txt')

expense_adjustment_part_one = util.find_expenses_from_total(expenses, 2020, 2)

puts('Final Total for Part One:')
puts(expense_adjustment_part_one.inject(:*))

expense_adjustment_part_two = util.find_expenses_from_total(expenses, 2020, 3)

puts('Final Total for Part Two:')
puts(expense_adjustment_part_two.inject(:*))
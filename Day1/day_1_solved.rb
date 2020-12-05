require './lib/account_expense_utility'
# def get_expense_pair(expenses, total)
#     expensePair = nil
#     expenses.each do |expense|
#         remainder = total - expense
#         expenses.shift()
#         has_remainder = expenses.include?(remainder)

#         if has_remainder
#             expensePair = [expense, remainder]
#             break
#         end
#     end

#     return expensePair
# end

util = AccountExpenseUtility.new
expenses = util.get_account_expense_transations('./entries.txt')

expense_adjustment_part_one = util.find_expenses_from_total(expenses, 2020, 2)

puts('Final Total for Part One:')
puts(expense_adjustment_part_one.inject(:*))

expense_adjustment_part_two = util.find_expenses_from_total(expenses, 2020, 3)

puts('Final Total for Part Two:')
puts(expense_adjustment_part_two.inject(:*))
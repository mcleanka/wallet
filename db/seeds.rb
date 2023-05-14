statuses = [
  { name: 'Pending', description: 'Record is waiting for further action or approval.' },
  { name: 'Closed', description: 'Record has been completed or resolved.' },
  { name: 'Rejected', description: 'Record has been rejected or denied.' },
  { name: 'Completed', description: 'Record has been successfully finished or achieved.' },
  { name: 'Active', description: 'Record is currently ongoing or in progress.' },
];


statuses.each do |status|
  Status.create(status)
end

category_list =  [
	{ name: 'Groceries', description: 'Food and household items purchased for consumption at home.' },
	{ name: 'Dining Out', description: 'Meals and drinks purchased at restaurants, cafes, or other food establishments.' },
	{ name: 'Transportation', description: 'Expenses related to transportation, such as gas, parking, public transportation, or ride-sharing services.' },
	{ name: 'Housing', description: 'Expenses related to housing, such as rent or mortgage payments, property taxes, or home repairs.' },
	{ name: 'Utilities', description: 'Expenses related to utilities, such as electricity, gas, water, internet, or phone services.' },
	{ name: 'Entertainment', description: 'Expenses related to leisure and entertainment, such as movies, concerts, sports events, or hobbies.' },
	{ name: 'Healthcare', description: 'Expenses related to healthcare, such as doctor visits, medications, or health insurance premiums.' },
	{ name: 'Education', description: 'Expenses related to education, such as tuition, textbooks, or school supplies.' },
	{ name: 'Gifts & Donations', description: 'Expenses related to gifts or donations, such as charity donations, or gifts for friends or family.' },
	{ name: 'Personal Care', description: 'Expenses related to personal care, such as grooming, clothing, or beauty products.' },
	{ name: 'Travel', description: 'Expenses related to travel, such as airfare, lodging, or rental cars.' },
	{ name: 'Other', description: 'Any other type of expense not included in the above categories.' }
]

category_list.each do |category|
  Category.create!(category)
end

income_sources = [
	{ name: 'Salary', description: 'A regular payment from an employer for work performed.' },
	{ name: 'Commission', description: 'A percentage of the sales price of goods or services as compensation for the sale.' },
	{ name: 'Bonuses', description: 'An additional payment given to an employee as a reward for good work or as an incentive.' },
	{ name: 'Freelance Work', description: 'Self-employed work or services provided to clients on a project-by-project basis.' },
	{ name: 'Business Income', description: 'Money earned by a business through its operations, such as sales revenue.' },
	{ name: 'Investment Income', description: 'Income generated from investments, such as dividends, interest, or capital gains.' },
	{ name: 'Rental Income', description: 'Money earned by renting out a property or other asset.' },
	{ name: 'Government Assistance', description: 'Financial aid provided by the government to individuals or families in need.' },
	{ name: 'Other', description: 'Any other source of income not included in the above categories.' }
]

income_sources.each do |income_source|
	IncomeSource.create!(income_source)
end
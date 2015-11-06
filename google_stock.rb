require 'gruff'
require 'csv'

charttest = CSV.read('popupshop.csv', headers: true)

graph = Gruff::Bar.new(600)
graph.title = 'Highest selling item'

x_axis = []
charttest.each { |col1|  x_axis << col1['Items'] }

start_date = x_axis.min
middle_date = x_axis[(x_axis.length ) / 2]
end_date = x_axis.max

graph.labels = { 0 => start_date, 50 => middle_date, 100 => end_date }

graph.data('', charttest.collect { |col5| col5['date'].to_i }, '#B75582')

graph.x_axis_label = 'Items'
graph.y_axis_label = 'Day'

graph.write('popupshop_chart.png')

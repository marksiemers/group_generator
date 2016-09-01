module GroupGenerator
  def self.number_of_groups(population, group_size)
    (population.length / group_size) + 1
  end
end

puts "Enter names separated by commas:\n"
students_input = $stdin.gets.chomp
puts 'What size should each group be? '
group_size = $stdin.gets.chomp.to_i
puts 'How many sets of groups should be generated? '
number_of_sets = $stdin.gets.chomp.to_i

students = students_input.length > 0 ? students_input.split(',') : ["Kevin", "Mark", "Kimbra", "Amanda", "Brianne"]
number_of_groups = GroupGenerator.number_of_groups(students, group_size)

sets = []
number_of_sets.times do
  set = []
  students.combination(group_size).each do |group|
    puts "Group: #{group}"
    if group.none?{|student| set.flatten.include? student }
      set << group
    end
    if set.length >= group_size
      sets << set
      set = []
    end
    break if sets.length >= number_of_sets
  end
end

puts "Number of sets #{sets.length}"
sets.each_with_index do |set,index|
  puts "Set #{index+1}:"
  set.each_with_index do |group,index|
    puts"#{index+1}: #{group}"
  end
end

# Group Generator
An application to help generate weekly groups for a given student population.

For example, you have 16 students, and you want groups of 4 each week for 9 weeks.

The goals of the program are as follows:
1. Maximize the chances that everyone works together as early as possible
2. Minimize the number of times students work together
3. Keep the groups as close to the desired group size as possible

# Requirements
* ruby (tested with 2.3.1, older versions should also work)

## Usage
Use as a command line interface (CLI)
```bash
$ ruby group_generator.rb
Enter names separated by commas:
Angela, Bryan, Carrie, Daniel, Erin, Frank, Gilda, Henry, Ida, Jacob, Karen, Louis
What size should each group be? 4
How many sets of groups should be generated? 9
Set 1:
1: Angela, Bryan, Carrie, Daniel
2: Erin, Frank, Gilda, Henry
3: Ida, Jacob, Karen, Louis
...
Set 9:
1: Angela, Frank, Karen, Daniel
2: Erin, Jacob, Carrie, Henry
3: Ida, Bryan, Gilda, Louis
```

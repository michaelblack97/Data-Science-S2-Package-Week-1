#The goal of this package was to create several functions that could be used to analyse
#seasonal football data, as well as a few novel functions. Novel functions include the
# "com..." functions, whereby someone who is writing commentary on a live match could
# simply enter a few values and a string of commentary would be returned.

# The more conventional functions were
# intended to return basic visualisations of, for example, a team's cumulative points per
# matchweek.

#The latter was quite complex, as it involved first finding all the matches where a particular
# team played, and then converting the result - given as a win, draw, or loss for the HOME
# team only - into points. This would then be used to create a data frame with the number
#of matchweeks as indices, and the cumulative points total in the other column.
# The data frame would be used to create the plot.
# The selection of data would be based on which team was entered into the function.

# IN reality, this proved far too difficult to execute, and we were left with just the
# commentary functions.

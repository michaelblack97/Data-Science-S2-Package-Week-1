all.fixtures <- function(team){

  #enter team name in quotes, e.g. all.fixtures("Chelsea")

  x = team

  number.of.matchweeks <- 2*length(grep(x, football$AwayTeam))
  #determines total number of matchweeks in a season. Searches for the number of times a team
  #plays away, and double it (teams always play equal number of home and away games).

  indices.of.home.team <- grep(x, football$HomeTeam)
  #returns indices of home games of specified team

  indices.of.away.team <- grep(x, football$AwayTeam)
  #returns indices of away games of specified team

  indices.of.both <- sort(c(indices.of.home.team,indices.of.away.team))
  #creates a vector containing all match indices, sorted from smallest to biggest. This ensures
  #that matches are returned in order, and unbiased between home and away

  fixtures <- data.frame(MatchWeek = seq(1:number.of.matchweeks),
                         #basically just the indices of the table

                         HomeTeam = football$HomeTeam[indices.of.both],
                         #Returns the Home Team value for every row where the selected team
                         #appears in EITHER the home or away column

                         AwayTeam = football$AwayTeam[indices.of.both],
                         #Returns the Away Team value for every row where the selected team
                         #appears in EITHER the home or away column

                         Result = football$FTR[indices.of.both]
                         #Returns the full time result of the match. H = home team win, A = away
                         #team win, D = draw
  )
  View(fixtures)
  #opens table of the created dataframe

}

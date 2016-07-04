all.fixtures <- function(team) {

  x = "team"

  number.of.matchweeks <- 2*length(grep(x, football$AwayTeam))
  indices.of.home.team <- grep(x, football$HomeTeam)
  indices.of.away.team <- grep(x, football$AwayTeam)
  indices.of.both <- sort(c(indices.of.home.team,indices.of.away.team))

  fixtures <- data.frame(MatchWeeks = seq(1:number.of.matchweeks),
                                HomeTeam = football$HomeTeam[indices.of.both],
                                AwayTeam = football$AwayTeam[indices.of.both])
  return(fixtures)
}

attach(football)

x = "Chelsea"

number.of.matchweeks <- 2*length(grep(x, football$AwayTeam))
indices.of.home.team <- grep(x, football$HomeTeam)
indices.of.away.team <- grep(x, football$AwayTeam)
indices.of.both <- sort(c(indices.of.home.team,indices.of.away.team))

fixtures <- data.frame(MatchWeeks = seq(1:number.of.matchweeks),
                       HomeTeam = football$HomeTeam[indices.of.both],
                       AwayTeam = football$AwayTeam[indices.of.both])

return(fixtures)







Points.Per.Game
indices.of.both
indices.of.home.team
indices.of.away.team
indices.of.both
ordered(indices.of.both)
indices.of.both
rm(x,y,z)
x<-c(35,27,73,72,74,18,89,39,11,13,18,93,90,91,67,69,111,174,263)
football$HomeTeam[x]
x
indices.of.both
class(indices.of.both)
as.numeric(indices.of.both)
Points.Per.Game

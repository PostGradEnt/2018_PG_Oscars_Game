#
##
### 2018 PostGrad Movies Podcast Oscars Game Script (90th Academy Awards)
##
#


## You can find the podcast via multiple online services...
## Podomatic: https://www.podomatic.com/postgradmovies
## iTunes: https://buff.ly/2sSHLUT
## Google Play Music: https://buff.ly/2sSxVm3
## YouTube: http://buff.ly/2eofVU


#
## BEGIN SCRIPT
#

# This is a specific version of JennyBC's bingo script 
# (https://github.com/jennybc/bingo) except made to work 
# without downloading all the extra scripts in the repo 
# and also with the official Oscars categories compiled 
# by Kulguy


## Install devtools if you don't have it

# install.packages("devtools")



## Install the bingo code directly from Github using devtools

devtools::install_github("jennybc/bingo")



## Load required packages

require("bingo")



## Create an object with all Oscars categories

# NOTE: this can also be copy/pasted into its own
# R script (ex: oscars.R) and saved to the bingo
# package directory /bingo/topics

oscars <- c(
  "Best Picture",
  "Best Director",
  "Best Actor in a Leading Role",
  "Best Actor in a Supporting Role",
  "Best Actress in a Leading Role",
  "Best Actress in a Supporting Role",
  "Best Animated Feature",
  "Best Animated Short Film",
  "Best Cinematography",
  "Best Costume Design",
  "Best Documentary Feature",
  "Best Documentary Short Subject",
  "Best Film Editing",
  "Best Foreign Language Film",
  "Best Live Action Short Film",
  "Best Makeup and Hairstyling",
  "Best Original Score",
  "Best Original Song",
  "Best Production Design",
  "Best Sound Editing",
  "Best Sound Mixing",
  "Best Visual Effects",
  "Best Adapted Screenplay",
  "Best Original Screenplay"
)



## Confirm the "oscars" object has the info in it

tail(oscars)

# NOTE: if you saved "oscars.R" before, you can
# also check via the "get_topic" command

# tail(get_topic("oscars"))



## Make 50 5x5 bingo cards from the "oscars" object data

# Follows pattern: "bingo(number-of-boards, data, size-of-board)"

bingo.cards <- bingo(50, oscars, n = 5)

# NOTE: if you saved "oscars.R" before, you can
# also make the cards via the "get_topic" command

# bingo.cards <- bingo(1, get_topic("oscars"), n = 5)



## Print all the cards to PDFs in the directory you're 
## currently working in (root)

plot(bingo.cards)



#
## END SCRIPT
#

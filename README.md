# datathons

![Logo](img/toynbee_logo.gif)

# Toynbee Hall Datathon

Welcome to the first ever Toynbee Hall datathon!
If you have not registered for this event, please [pop on over to the Eventbrite so we can have an idea of how many people participated!](https://www.eventbrite.co.uk/e/datathon-at-toynbee-hall-tickets-59760759039)
This page has all the information you need to help us make meaningful changes in Tower Hamlets.

## Background

Since our inception in 1884, evidence based research has been central to Toynbee Hall’s mission as a charity. 
Over a century ago we played a key role in creating the first data visualizations mapping poverty in order to help tackle inequalities in London. 
135 years later we are now turning to new technologies to help serve the community we continue to be a part of. 

Continuing in our history of using evidence to build narratives for social change, we thank you for joining us in person or online for an afternoon of analyzing and visualizing publicly available data to help create materials we can use in our mission to advocate for meaningful impacts that will change government policy.

Below, we detail our methods, goals, and provide as much as we can to enable you to help us.

## Context

While you can read more about us on [our website](http://www.toynbeehall.org.uk/), the focus of today's Datathon looking at two separate issues in the Tower Hamlets community:

1. Youth Homelessness
2. Local Safety

To give a bit of background information, [Tower Hamlets](https://en.wikipedia.org/wiki/London_Borough_of_Tower_Hamlets) [one of 32 boroughs](https://en.wikipedia.org/wiki/List_of_London_boroughs) in London, England.
Historically, Tower Hamlets has been one of the poorest and underfunded boroughs in all of London.
Despite our lack of financial support compared to other wealthier boroughs, Tower Hamlets is one of the most [culturally diverse areas in all of London](https://en.wikipedia.org/wiki/London_Borough_of_Tower_Hamlets#Demographics).

According to a previous [research project we carried out looking at the needs of older people in Tower Hamlets](http://www.toynbeehall.org.uk/wp-content/uploads/2018/09/You-dont-really-know-people-till-you-talk-to-them-Older-Peoples-Participatory-Action-Research-FINAL-REPORT.pdf), we identified public safety as an issue we needed to address in future work.
That future work is this project.

Our goal here is to identify trends in data, visualize them, and share them in way that they can be leveraged by local charities as part of their literature they used to advocate for change at the Government level.

SENTENCE HERE ABOUT LAUNCH EVENT AND WHAT WE WANT. 

For example, in the past we have made ...
In this project, we would like to identify...

## The Questions

Today our question is "How can we find empirical support in order to demonstrate ____ ?".
In order to help answer this question, we have collected an assortment of data sets from publicly available official sources in order to provide you with the materials to help answer these questions. 
The data sets are found below along with their original source, as well a few [tidy](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html) versions of some of the data to help with your time. 

## Your Analysis 

Given the Datasets below, we ask that you analyze your data as transparently as possible.
This means:

1. For each visualization, please use a common open source software like R or Python to create your data visualizations.
2. Save each visualization and please produce a commented script that allows your dataviz to be reproduced. This will allow us to expand upon your work, ensure the analyses are reproducible, and will let us at Toynbee Hall edit the visualizations for House Style if we adopt your creation in one of our campaigns.
3. If possible, please try to match the House Style of the charity's data. 
4. You are free to share your creation(s) on Twitter with both the #data4toynbee (and #tidytuesday hashtags). 
5. You publish your creation under an open source license. We only ask this so if we do use your analysis or data visualization in our work, we don't run into any legal problems. The MIT license, which falls under this category, is reproduced below. 

You can find a sub-directory of an example analyses in the Examples directory of this repository. 

## Datasets

In the list below we have our datasets of interest.
The crime dataset has been taken from the London Data warehouse.
There also exists a script to combine and merge years of London data if you are feeling bold and want to include a lot of archive data.

The Youth Homelessness data comes from Centrepoint.

* [Crime in London](https://data.london.gov.uk/dataset/recorded_crime_summary)
* [Youth Homelessness via Centrepoint](https://www.yhdatabank.com/)

### Data Notes

* The Youth Homelessness data varies based on how different districts report what qualifies as homeless
* Wards changed in London across the three London Databases. If building a complete London crime dataset, these geographic changes will affect locations. See link for more details 
* Both Crime and Youth Homelessness data is COUNT data and not tidy!! Each row does not represent an INDIVIDUAL crime, but an aggregate. 

## Schedule 

Below we have sketched out our plans for the day.
Times listed are BST. 
The schedule for the afternoon is purposefully loose as to allow people to chat, network, and work together to discuss problems and how best to solve them.


| Time        | Plan          | Speaker |
| ------------- |:-------------:| ------|
| 13:00  | Welcome!           | Xia Lin |
| 13:15  | Introductions      | David Baker, Elliot Williams-Fletcher, Participants |
| 13:30  | Begin Datathon     | | 
| 15:30  | Coffee Break      | |
| 16:30  | Wrap Up and Sharing| |
| 17:00  | Event Ends         | |


## House Style

We want to use your work to help advocate for change in Tower Hamlets.
In order for us to do that as efficiently as possible, the charities eventually will need to format it with their house style.
Below we have listed the general style guides for both Toynbee Hall and Centrepoint.

You of course do not need to submit your data viz with our house style-- one of the big goals of this is to just see what we can learn when we ask for other's help analyzing our data -- but if you would like to follow the house style, Toynbee Hall uses...

You will notice that both charities use Orange, Black, Grey, and Blue. 

### Toynbee Hall

* Font: Arial Regular 
* Primary Color
  - Orange (#F58220)
  - Grey (#635466)
* Text Color
  - Grey (#4C4D4F)
* Secondary Palette 
  - Blue (#175984)
  - Light Blue (#96B4DE)

### Centrepoint (YHD)

* Font:
  Title: Oswald Regular
  Text: Lato (Light, Regular, Heavy)
* Primary Color:
  - Orange (#D14414)
  - White (#FFFFFF)
  - Black (#000000)
* Secondary Color: 
  - Teal (#2EA393)
  - Dark Grey (#363636)
  - Warm Grey (#E9E6DC)
  - Yellow (#FFD141)
  - Blue (#0082C7)
  - Purple (#A54398)


Eventually we plan to create a similar house package akin to [bbplot](https://github.com/bbc/bbplot), but this has not been created yet. 

## Liscence Agreement 

By participating in our Datathon, we ask that any data visualizations that you create are published under the the [MIT License](https://en.wikipedia.org/wiki/MIT_License).

The licences is reproduced below.

```
Copyright (c) 2019 <YOUR NAME HERE>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Thank You and Future Work 

We want to thank you for the work that you are doing for us and our community.
If you would like your name to be added to the report that will emerge from this project, please add your name to the Google Form below.
This will allow us to include your name in the report.

One of the other goals in this Datathon is creating a network of data analysts that are willing to help with future work.
Unlike much of the start up, tech, machine learning world, many non-profits and charities do not have or even need the latest machine learning in order to be effective in our goals.
What we do need is people who can create clear, clean meaningful analyses to help build narratives to mobile social change.
If you enjoyed this and would like to be contacted for future small and similar requests, please indicate that on the form below.

One of our goals is to use our infrastructure in order to build up a network where we can use data for good to help those that need it.

If you could please fill out [THIS ONE MINUTE SURVEY](https://forms.gle/pP1XuSVqqgNbfzXG8) that asks if you would like to be listed on our future reports and be contacted in the future, we would very much appreciate it! 
This survey also asks if we can share your information with [DataKind](https://www.datakind.org/), another charity organization looking to pair data scientists with charities. 
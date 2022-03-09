## Midterm Ecology project
### Continuing the FireFlies Ecology system
Added concepts to become an ecosystem:
1. fireflies reproduce larvae 
(if condition met I set it to be having to eat at least 10 worms and the female and the male have to encounter at least 3 times)


2. when there are light then the fireflies fly outwards disappeared 


3. when there are no light then the fireflies roam around 
(the **night button** can help switch the night and day mode)


4. female and male meet 
(yellow fireflies are the male, and the pink ones are the female)


5. fireflies eat the worms
(the tiny rectangle are the worms)


6. human comes in and the ecosystem is disrupted (The triangle in the day time represent human)
7. Different shades of the color to imitate the flickering of light for fireflies


### Links to video and screenshots:

Youtube:https://youtu.be/7ruShKz9bi4


![](https://github.com/FairyyGenie/RobotPsyche/blob/main/midterm/media/Daytime-1.png)

![](https://github.com/FairyyGenie/RobotPsyche/blob/main/midterm/media/Nighttime-1.png)

### Process and Problems of implementation:

Process for me was like a zipline:
Ideation -> Try to Implement -> realized I am uncertain on how to do it -> back to thinking about the ideas
There were some compromises involved, but I am happy with the overall outcome!


A big issue for me is to untangle all the effects each classes have on each other. Worms are attracting Movers and Fmovers, and Fmovers are attracting Movers too. So after writing the classes, I decided I was going to try out the function one by one and see if it works.  Having also to keep track of if female and male touched each other, and have they eaten the worms is also not easy in the beginning. I decided eventually I was going to use numbers to keep track instead of trying to mess with the other functions and that made things easier and the frame looks simpler too.

### Interesting thing:
When implementing the ecosystem, I expected that reproduction and consumption of worms will be harder under the daytime mode since humans can come in to disrupt the ecosystem.

But after implementation, I realized it is not neccesarily the case. Maybe because in my program, when human shows up it pushes the fireflies to the side. And when all the fireflies are on the side, they meet each other more easily and get to eat the worms on the corner easily. The reproduction rule I set for the system is that when more than 10 worms have been eaten and the male and female fireflies have encountered each other for more than 3 times in order for the larvae to be produced.

Under the night mode, the fireflies have the liberty to roam around and they are attracted by two sorts of force the female and the worms force and not effeted by any other forces. The fireflies are neccesarily always meeting each other since the characterristics for each creatures are different. 

Ehtisham suggests something really interesting. Maybe this scenario can be explain as fireflies in order to survive the human invasion they start to reproducing in a much much faster pace.

In the Group discussion, I realized there are much more detail that can be considered and implemented. For example, life cycle length of existence and even incubators when the ecosystem is dying. It is turly interesting to see people's idea for their ecosystem. 


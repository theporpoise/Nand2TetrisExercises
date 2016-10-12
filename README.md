# Nand2TetrisExercises


I did the exercises inside the folders as I was going through the course.  This way when you execute the program it will intelligently use built in chips as you progress.  What this means is - you build really small basic chips in a simulator.  These chips are very very slow computationally.  as you finish the lesson, you move to the next lesson in a new folder.  the next lesson will build on the small basic chips you built previuosly.  HOWEVER, becuase it's ina  separate folder the simulator will NOT use the chips you built in the previous lesson - which are very very slow - but instead substitute in built in chips that are really fast (written in Java instead of the slow hardward design language).
What this means is that as you build really big chips - like a ram 64k that would take 64 thousand of your small slow chips - it doesn't crash your computer.  becuase it knows to not try to build it using your small slow chip (which would work, but it's just slow) and iknstead uses a built in chip.

The downside is you have to hunt around in each folder to find the submission that I made.  for the hardware ones it's usually an .hdl file.  it's nto one of the test files or test scripts that just come standard with the course.

I may break out all my final submissinos into a separete folder in the future when i finisht the whole course, but for now I just don't care!

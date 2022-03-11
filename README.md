# tavern_toss
a game about escaping from a tavern

Uploaded the working exe as a zip. To run simply download, unzip and run the exe.

Instructions:
Press R to restart the level.
Input command sequence, then use go button. Command sequence will loop. Use the wand button to teleport if you get stuck.
Prevented commands [except teleport] from being added to the stack while the player is active.

The program runs on data structures. The original idea was to have a game about a dwarf escaping from a tavern. He staggers here and there, gets in fights, loses hp, gains gold [game currency], picks up items, is repositioned by certain enemies [barman, bouncer, wizard], can run into mimics masquerading as furniture, and so on. The foundations of the game are definitely there. But it is a lot of work! I may return to it, but it is the biggest solo project I have worked on to date so I am quite happy. A big task would be to prevent loops from occurring. One idea I did have was to record the player's position to a finite array. I would store the index in a var. If it cropped up a second time I'd check the value after using the var as a reference My function array_find(_arr, _val)_ returned the first index of the given array matching the given value. So I could compare each of the following entries, and if the same, teleport. 

if _arr[_index +1] == _arr[array_find(_arr, _arr[_index+1])] { 
  teleport;
  }
  


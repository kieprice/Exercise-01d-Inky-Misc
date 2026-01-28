/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. The water glimmers and sparkles. A small mist glides over the waves as they ripple towards you, then pull away in a rythmatic song.
{ on_ray: You feel special as you remember your fun night swim with the manta ray and how you wish to do it all over again.}

It is { advance_time() }

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
Further down the beach, the sand looks endless where the water looks like the edge of the world.

It is { advance_time() }
* { time == 1 } [Pick up some seashells] -> shells
* { time == 2 } [Take a night swim] -> ocean
+ [Move back up the beach] -> seashore

== shells ==
You sift through the sand for seashells and stuff them in your pockets. They have no use to you except for a memory.
-> beach2

== ocean ==
You decide to dip your feet into the cold water. It's refreshing in a sense, despite the cold wind of night brushing against the pockets of skin where water once was.
As you wade in the water, you notice a glow of blue in the horizon. It grows bigger and bigger, no- it's growing closer and closer until it halts a few feet away from the shore.

It's { advance_time2() }

+ [Investigate the blue light] -> investigate
+ [Move back up the beach] -> seashore

== investigate ==
Curiosity takes over you. You step deeper into the water, chills rush up your legs but you persist. You meet with the glowing light and try to make sense of what you see.
The light looks squiggly at first but then firms it's shape to fit the gaze of your eyes. It's a giant manta ray.

It's { advance_time2() }

* [Touch it] -> touch_ray
* [Talk to it] -> talk_to_ray

== touch_ray ==
You reach your hand down and breach the water. The palm of your hand meets the skin of the creature, it's smooth surface felt slightly slimy but unworldly.
The manta ray doesn't seem bothered by your touch and almost feels like it's inviting you to.

* [Swim with the ray] -> swim
* [Talk to it] -> talk_to_ray

== talk_to_ray ==
You speak a few greetings to the manta ray but reach no response. However, it hovers around you. The sides of it's fins gently glide against your calves, like it's communicating through touch.
It feels like it's inviting you to swim.

* [Swim with the ray]-> swim

== swim ==
You trudge deeper into the water and the manta follows you.
Once you reach the drop off from the shore, the ray hovers infront of you like it's anticipating for you to climb on.

It's { advance_time2() }

* [Get on] -> on_ray

== on_ray ==
You place your hands at the head of the manta ray and as soon as it recognizes your grip, it launches forward into the water. You brace yourself for the impact of salt water in your eyes but somehow you're fine.
Whatever sort of mystical magic the manta ray had, it gave you the ability to breathe and see under water.
You pass glowing coral reefs with beautiful florecent fish enjoying the night life. You see kelp forests full of crabs that are eating their dinner. The most beatiful part of your swim is when a pack of glowing manta rays join your swim.

You have fun swimming with your new found friend until it is Morning

-> END
== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }

    
        
    ~ return time
    
    
 == function advance_time2 ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "11:00pm"
        
        - time == 1:
            ~ return "11:30pm"
        
        - time == 2:
            ~ return "12:00am"
    
    }

    
        
    ~ return time
    
    
    
    

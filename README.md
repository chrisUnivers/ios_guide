[Updates](#update)

# Practice Mode:
This is the practice mode. I use this method every time I practice. It's also the only mode, with expection to the first time I do a step. When doing a step for the first time, I simply try to reproduce that step without looking at the solution.<br>
In this video everything I type is completely from memory. The only thing I read are the instructions of a given step. In this video, I will be doing ***section 5 step 3***. Again, Every thing I type is straight from memory because I have already done step 3 in section 5. **For example:** Step 3 requires to use a ***toolbar button***. From doing this step before, I know that to create a ***toolbar button*** I need to use the ***.toolbar{} container*** etc.... I have also done the tutorial from the 2nd link and so I use the stuff I remember from that tutorial to help me when completing other tutorials. After trying to complete a step, I check with the "solution" which are on the right side of the instructions. If I get even one thing wrong I mark it with an [x] i.e: /***toolbar ScrollView attribute->done right[x]***/. [Correction](#correction) ***NOTE: I am going to intentionally make a mistake to to show this***. When doing a step for the first time, I try to see if I can complete the step without using the solution(right side of the instructions)by relying on the other tutorials I've done. It is important to ***note*** that I do the sections and steps in order. That is, if a step I'm doing uses a variable but none of the steps I've done so far showed how to create that variable I will not use that variable. Instead, I will use something like /*TODO*/ or "?", see: [Updates](#update) for more on this. I'll also show Section 4 steps 2-4. Note that the code that i have is missing a ZStack container while the sample/solution has a ZStack container. This is because the ZStack is mentioned in step 5 and the code is for steps 2-4. This is the last thing I will show in the video.<br>
***The video***:https://www.youtube.com/watch?v=BqrRVB3-rUo

**The first link is to the tutorial used in the video:**
https://developer.apple.com/tutorials/sample-apps/editinggrids

**The second link is mentioned in the[Practice mode](#practice-mode) header:**
https://developer.apple.com/tutorials/sample-apps/organizingwithgrids <br>
> Hello.

# Correction
When I make spelling mistakes I don't count those as mistakes since if you were using the editor for ios(xcode) you would catch those mistakes.

# Update:
* I recommend adding the "code" in the file update.swift to your SymbolGrid.swift file just below the ScrollView with LazyVGrid->done right block. That's where you can put all of the "attributes", "" because I'm not sure if they're called attributes, used on the ScrollView with LazyVGrid block.<br>
* When it comes to using variable and structs that have not been created in a step, I think it's best to make a decision that makes sense. For example in step 4 of section 5 I explicitily write the variable "selectedSymbol" and call the struct "SymbolPicker" even though no prior steps show how the variable and the struct are define. <br>
* New Section: [Navigation put together](#navigation-put-together)

# Up And Down shortcuts: 
***The following steps will help you set up keyboard shortcuts for going up and down a file.
Watch the begin of this video(https://youtu.be/Pp_fTnL0gRw) to see what the file will looks like and then read the stuff below on how to set up that file. :***<br>
Inside vscode with any file open press: 
    ***ctrl+shift+p***<br>
Inside the "search bar" that opens type:<br>
    ***keyboard shortcuts json***<br>
Press *Enter* or click on that option. This will open a file called ***keybindings.json***. Copy the content of the file ***upAndDown.txt***,found in this repository, paste in ***keybindings.json*** and save.<br>

# Notes
* The if state used in the VStack found in section 5 of this tutorial: https://developer.apple.com/tutorials/sample-apps/editinggrids is not explicitly. I addressed this by simply going through the code and figuring out what's going on. It is best to do that after you've gone through all the sections of the tutorial in found on that link.

# Keyboard shortcuts:

`Exit:` ***Esc***<br>
`Change current file:` ***ctrl+p***<br>
`Navigate working-files:` ***ctrl+tab***<br>
`UP(9,8,7):` ***ctrl+shift+9***<br>
`Down(9,8,7):` ***ctrl+7***<br>
`One word:` ***ctrl+arrow*** *left or right arrow*<br>
`End of line:` ***fn+arrow*** *left or right arrow*<br>
`To Select word(s):` ***shift+x*** Where x = [`End of line:`,`One word:`,up arrow,down arrow]<br>**NOTE:** ***Do not*** use the *UP(9,8,6): or DOWN(9,8,6):* shortcuts with `shift` when selecting upwards or downwards. ***Always*** use ***up or down arrows*** with `shift` to select vertically.<br>
`Next occurence:` ***ctrl+d***<br>
`To View Page:` ***ctrl+arrow*** up or down arrow<br>
`To Rename-Refactor:` ***fn+f2***<br>
* **Note:** You can select a sentence.

`To Close:` ***ctrl+shift+\[*** <br>
`To Open:` ***ctrl+shift+\]***<br>
`To switch windows:` ***alt+tab*** See ***NOTE*** below. 
> I almost never, rarely, use the mouse to change from window to window. Instead, I use the "alt+tab" keyboard shortcut. After pressing "alt+tab" and while still only holding "alt", you can also use the arrow keys or press "tab" to go to the next window.

# Navigation put together
**This \{...} is a code "block"**<br>
**Going up:** ***IMPORTANT, starting from the end of a "block", so where this "}" is, and assuming content of a the block, "\{}", are hidden***<br>
* Up arrow: takes you to start of block, "\{".
* ctrl+shift+9: This will take you to the end of the next code "block" i.e next "}".<br>

**Going down:** ***starting from the start of a "block", so where this "\{" is, and assuming content of a the block, "\{}", are hidden***<br>
* Down arrow: takes you to the end of the block, "}"<br>
* ctrl+9: This will take you the the start of the next code "block".

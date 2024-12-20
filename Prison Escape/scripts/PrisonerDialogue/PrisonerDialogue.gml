///// @file Handles the Dialogue Branching and game logic for all interaction with the Prisoner. 
///// @author Gavin Mills
////  Griffen Nya created the strucure of the code which is heavily used here, all work labeled as written as Gavin Mill still implies using structure from Griffen Nye
////  Date Created by Griffen: 3/21/24
////  Date Edited by Gavin: 10/19/24
////  Date Edited by William: 10/6/24 - I'm sorry the code looks awful now but it works.
////  Leaving as many comments as possible from the original and editing description for ease of use
////this defines all global variables (written by Gavin Mills)
//global.prisonerThirdDialogueBranch = 0;
//global.prisonerFourthDialogueBranch = 0;
//global.prisonerFifthDialogueBranch = 0;
//global.prisonerSixthDialogueBranch = 0;

//global.prisonerDialogueBranch = 0;
//global.prisonerDisabled = false;
//global.prisonerDialogueOptions = ["\"Who are you, and what brings you here?\"", "\"Why is this room shrouded in such darkness?\"", "\"Is there any hope to escape from this hell, or are we doomed ?\"","Walk away"];

///// @func displayPrisonerMenu()
///// @desc Displays the Prisoner dialogue menu to the player using objDialogueBox
///// @return {undefined}


///// @func submitPrisonerAction(choice)
///// @desc Handles calling appropriate Prisoner dialogue branch based on player's selection in objDialogueBox
///// @param {real} choice Index of the option selected by player in objDialogueBox
///// @return {undefined}
//function submitPrisonerAction(choice) {//This is the main tree for the prisoner dialogue which handles switching to different branches throughout the dialogue progress
//	//Written by Gavin Mills
//	//Change set of possible functions based on the Prisoner's dialogue branch
//	if (global.prisonerDialogueBranch == 0) { //Default Branch
	
//		switch(choice) {
//		case 0:
//			whoAreYou();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 1:
//			darkRoom();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 2:
//			escapeQ();
//			break;
//		case 3:
//			objPlayer.isTalkingToPrisoner = false;
//			objDialogueBox.alarm[1]=1;
//			break;
//		}//end switch
	
//	} else if (global.prisonerDialogueBranch == 1) { 
		
//		switch(choice) {
//		case 0:
//			whoAreYou();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 1:
//			darkRoom();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 2:
//			stoneBranch();
//			break;
//		case 3:
//			objPlayer.isTalkingToPrisoner = false;
//			objDialogueBox.alarm[1]=1;
//			break;
//		}//end switch
		
//	} else if (global.prisonerDialogueBranch == 2) { 
		
//		switch(choice) {
//		case 0:
//			whoAreYou();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 1:
//			darkRoom();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 2:
//			chiselBranch();
//			break;
//		case 3:
//			objPlayer.isTalkingToPrisoner = false;
//			objDialogueBox.alarm[1]=1;
//			break;
//		}//end switch
//	}
	
//	else if (global.prisonerDialogueBranch == 3) { 
		
//		switch(choice) {
//		case 0:
//			whoAreYou();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 1:
//			darkRoom();
//			objPlayer.isTalkingToPrisoner = false;
//			break;
//		case 2:
//			guardBranch();
//			break;
//		case 3:
//			objPlayer.isTalkingToPrisoner = false;
//			objDialogueBox.alarm[1]=1;
//			break;
//		}//end switch
		
//	}//end if
	
//}//end submitPrisonerAction



///// @func whoAreYou()
///// @desc Handles Prisoner response to player asking who they are
///// @return {undefined}
//function whoAreYou() {//this is a simple dialogue option written by Gavin Mills
//	objDialogueBox.setDialogue("Mysterious Prisoner: \"A name long forgotten, a soul bound by shadows. I am but a whisper in the dark, a keeper of secrets that time has left behind\"");
//}//end whoAreYou

///// @func darkRoom()
///// @desc Handles Prisoner response to player asking to order a drink and presents player with drink options.
///// @return {undefined}
//function darkRoom() {//this is a simple dialogue option written by Gavin Mills
//	objDialogueBox.setDialogue("Mysterious Prisoner: \"This darkness holds us because we're at the bottom, where no light dares to reach. For those cast this low, there is no salvation, darkness being our only companion.\"");
//}//end darkRoom



///// @func escapeQ
///// @desc Handles the hints for the stone.
///// @return {undefined}
//function escapeQ() { //this is the third dialogue branch for the prisoner written by Gavin Mills
//    var prisonerText = "Mysterious Prisoner: \"";

//    switch(global.prisonerThirdDialogueBranch) {
//        case 0:
//            prisonerText += "The entrance to the cell is guarded at all times so that is a no, but there is another way...\"";
//            array_set(global.prisonerDialogueOptions, 2, "\"You're hiding something. Tell me about this 'other way.' \"");
//            global.prisonerThirdDialogueBranch++;  // Increment branch
//            break;
//        case 1: 
//            prisonerText += "Beneath the shroud of forgotten dreams, where the golden whispers hide, lies the secret you seek\"";
//            array_set(global.prisonerDialogueOptions, 2, "\"Okay... \"");  // Replace previous options
//            global.prisonerThirdDialogueBranch++;
//            break;
//        case 2: 
//            prisonerText += "This place, beneath the shroud of forgotten dreams...\"";
//            array_set(global.prisonerDialogueOptions, 2, "\"What do you mean?\"");
//            global.prisonerThirdDialogueBranch++;
//            break;
//        case 3:
//            prisonerText += "Golden whispers hide the truth beneath the shroud of forgotten dreams...\"\n";
//			objDialogueBox.setDialogue(prisonerText);
//			objPlayer.isTalkingToPrisoner = false;
//			objPlayer.hasStoneLocation = true;

//            return;
			
			
//    }
	
//    // Set the new dialogue
//    objDialogueBox.setDialogue(prisonerText, global.prisonerDialogueOptions);
//}



//function displayPrisonerMenu(){ //this is the fourth dialogue branch for the prisoner written by Gavin Mills
//	if (objPlayer.hasStone && global.prisonerFourthDialogueBranch == 0)
//	{
//		global.prisonerDialogueBranch = 1;
//		array_set(global.prisonerDialogueOptions, 2, "\"Is this what you meant?\"");
//	}
//	if (objPlayer.hasChisel && global.prisonerFifthDialogueBranch == 0)
//	{
//		global.prisonerDialogueBranch = 2;
//		array_set(global.prisonerDialogueOptions, 2, "\"I have both the stone and chisel. What now?\"");
//	}
//	if (objPlayer.hasGuardDistracted && global.prisonerSixthDialogueBranch == 0)
//	{
//		global.prisonerDialogueBranch = 3;
//		array_set(global.prisonerDialogueOptions, 2, "\"The guard is distracted. Now what?\"");
//	}
//	objDialogueBox.setDialogue("Mysterious Prisoner:     ...",global.prisonerDialogueOptions);
	
//}//end displayPrisonerMenu
///// @func stoneBranch()
///// @desc Handles the hints for the chisel.
///// @return {undefined}
//function stoneBranch() { //this is the fifth dialogue branch for the prisoner written by Gavin Mills
//    var prisonerText = "Mysterious Prisoner: \"";

//    switch(global.prisonerFourthDialogueBranch) {
//        case 0:
//            prisonerText += "Ah, you've unearthed the voice of secrets. Now, let its murmurs guide your path through the shadows. The threads of your escape are nearly woven, yet one final strand eludes you.\"";
//            array_set(global.prisonerDialogueOptions, 2, "\"You are willing to help, yet speak in riddles. Explain further.\"");
//            global.prisonerFourthDialogueBranch++;  // Increment branch
//            break;
//		case 1:
//            prisonerText += "Where the stone meets its edge, a hidden truth rests, concealed behind the shift of time's gentle hand\"";
//            array_set(global.prisonerDialogueOptions, 2, "\"What edge, what do you mean?\"");
//            global.prisonerFourthDialogueBranch++;  // Increment branch
//            break;
//		case 2:
//            prisonerText += "The edge where stone meets time... Not all walls hold firm forever. Look closely, and you'll see where time has left its mark.\"";
//			objDialogueBox.setDialogue(prisonerText);
//			objPlayer.isTalkingToPrisoner = false;
//			objPlayer.hasChiselLocation = true;
			

//            return;
			
			
//    }
	
//    // Set the new dialogue
//    objDialogueBox.setDialogue(prisonerText, global.prisonerDialogueOptions);
//}

///// @func chiselBranch()
///// @desc Handles the hints for the guard distraction.
///// @return {undefined}
//function chiselBranch() { //this is the sixth dialogue branch for the prisoner written by Gavin Mills
//    var prisonerText = "Mysterious Prisoner: \"";
	
//	prisonerText += "The whispers you've uncovered may travel farther than you think. Sometimes, the right place for them to be heard is just beyond the reach of your grasp.\"";
//	objDialogueBox.setDialogue(prisonerText);
//	objPlayer.hasTalkedToPrisoner = true;
//	objPlayer.isTalkingToPrisoner = false;
//}

///// @func guardBranch()
///// @desc Final dialogue.
///// @return {undefined}	
//function guardBranch() { //this is the seventh dialogue branch for the prisoner written by Gavin Mills
//    var prisonerText = "Mysterious Prisoner: \"";
	
//    prisonerText += "The path now lies open, as shadows part. Seize the moment, and let the iron carve your way to freedom. \"";
//	objDialogueBox.setDialogue(prisonerText);
//	objPlayer.isTalkingToPrisoner = false;
//}
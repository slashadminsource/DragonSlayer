##############################################################################################################
#                                                                                                            #
#                                    Dragon Slayer 1.0 by Ian Waters                                         #
#                                   www.slashadmin.co.uk \ Lift In IT                                        #
#                                  Supporting Awesome IT administrators                                      #
#                                                                                                            #
##############################################################################################################

#Game Variables
$global:playerCharacter = $null
$global:playerDragonTip = $false
$global:runGame         = $true

#Clear Console
Clear-Host

function Setup-Display()
{
    $phost   = get-host
    $pwindow = $phost.ui.rawui
    $newsize = $pwindow.windowsize
    $newsize.height = 55
    $newsize.width  = 110
    $pwindow.windowsize = $newsize
}

function Title-Screen()
{
    Clear-Host 

    Write-Host "                                                                                                                   "                        
    Write-Host "          #@@@@@@`                                           #@@@@# @@@                                            "                               
    Write-Host "           @@@ @@@                                           @@, @@ @@@                                            "                             
    Write-Host "           @@@ :@@',@@@@@ @@@@@@  @@@@@@@  @@@@@  @@@@@@@    @@@@`  @@@ #@@@@@. @@@ @@: @@@@@ ,@@@@@               " 
    Write-Host "           @@@ `@@@ @@@@@    '@@ .@@  @@' @@@ @@@ :@@'@@@     @@@@' @@@     @@@ @@@ @@ @@@ @@: @@@@@               "  
    Write-Host "           @@@ #@@, @@@   @@:@@@ :@@  @@' @@# +@@ ;@@ :@@    ;; @@@ @@@ #@@:@@@  @@ @, @@@@@@@ @@@                 " 
    Write-Host "          @@@@@@@@ ,@@@# ;@@ '@@@ @@@#@@' @@@:@@@ @@@@:@@@   @@'@@@ @@@ @@@ @@@` @@@@  +@@ @:,:@@@#                "  
    Write-Host "          @@@@@@'  ,@@@#  @@@+@@@  ;:,@@;  #@@@#  @@@@:@@@   @@@@@  @@@  @@@@@@`  @@:   +@@@@ ,@@@#                "  
    Write-Host "                                  ::;@@@                                          @@                               "  
    Write-Host "                                  @@@@@,                                         @@'                               "  
    Write-Host "                                                                                                                   "
    Write-Host "                                                                                                                   "
    Write-Host "                                                                                                                   "
    Write-Host "                                                       @                                                           "
    Write-Host "                                                  ,#++, @                                                          "
    Write-Host "               `;;'';;`                             ,;+@@@@                             .;''';:`                   "
    Write-Host "            .`.;+@@@@@@@@@,                      #'.'@@@@@@#                        :@@@@@@@@@':``,                "
    Write-Host "                   +@@@@@@@@@`          '         @@@@@+@+@@          :          ,@@@@@@@@@:                       "
    Write-Host "                     @@@@@@@@@@;        @       ,..@@@`@@@@@@+        @        +@@@@@@@@@@                         "
    Write-Host "                      @@@#, :'@@@;      @        +@@@@;@@:`@@@        @      +@@@;: :@@@@                          "
    Write-Host "                      '`.@@@@@@@@@@.   @,       .::@@@.:@@@ `:        @;   ;@@@@@@@@@@`;`                          "
    Write-Host "                        @@@@@@@@@@@@@@@@          @@@@:`  @; `        ,@@@@@@@@@@@@@@@@                            "
    Write-Host "                          @@@@@@@@@@@@@@         :,@@@@@  @#@          @@@@@@@@@@@@@@                              "
    Write-Host "                          `@@@@@@@@;@@@@@        # @@@@@@ ::          @@@@@:@@@@@@@@                               "
    Write-Host "                           @@@@@@.@@@@@@@@@         @@@@@@         `@@@@@@@@#+@@@@@:                               "
    Write-Host "                           `@@@@ @@@@@@@@@@@@`      @@@@@@       :@@@@@@@@@@@@ @@@@                                "
    Write-Host "                           .,#@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@:@@@@@@@@@@@@@.+                                "
    Write-Host "                           `        `@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@,@@@@@                                         "
    Write-Host "                                      @@@@,@@@@@@@@@@@@@@@@@@@@@@@@@ @@@+                                          "
    Write-Host "                                       @@+@@@@@@@@@@@@@@@@@@@@@@@@@@;@@+                                           "
    Write-Host "                                        @:@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                            "
    Write-Host "                                        ,`@@.   @@@@@@@@@@@@@@@   .@@;                                             "
    Write-Host "                                          .      @@@@@@@@@@@@@      ',                                             "
    Write-Host "                                                    #@@@@@@@`                                                      "
    Write-Host "                                                     :@@@@@                                                        "
    Write-Host "                                                      ;@@@@                                                        "
    Write-Host "                                                      @@@@                                                         "
    Write-Host "                                                     @@@@@#                                                        "
    Write-Host "                                                     ,@@@+@                                                        "
    Write-Host "                                                      +@@:`                                                        "
    Write-Host "                                                      `@@.                                                         "
    Write-Host "                                                       @@`                                                         "
    Write-Host "                                                     + @@,                                                         "
    Write-Host "                                                     ::+@'`                                                        "
    Write-Host "                                                      @ @@@`                                                       "
    Write-Host "                                                      `@@@@;                                                       "
    Write-Host "                                                        @@#@                                                       "
    Write-Host "                                                        ''@@                                                       "
    Write-Host "                                                         @@@                                                       "
    Write-Host "                                                          @@:                                                      "
    Write-Host "                                                          '@@                                                      "
    Write-Host "                                                            @                                                      "
    Write-Host "                                                                                                                   "
    Write-Host "                                             Press Any Key to Play or Q to quit                                    "
    
    $continue = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 

    if($continue.Character -like 'q')
    {
        $global:runGame = $false
    }
}    

function Character-Selection()
{
    #Clear Console
    Clear-Host

    #Dragon Slayer
    Write-Host "##############################################################################################################"
    Write-Host "#                                                                                                            #"
    Write-Host "#                                    Dragon Slayer 1.0 by Ian Waters                                         #"
    Write-Host "#                                   www.slashadmin.co.uk \ Lift In IT                                        #"
    Write-Host "#                                  Supporting Awesome IT administrators                                      #"
    Write-Host "#                                                                                                            #"
    Write-Host "##############################################################################################################"
    Write-Host "                                                                                                              "
    Write-Host "                     #####################################################################                    "
    Write-Host "                                                                                                              "
    Write-Host "                                           Character Selection                                                "
    Write-Host "                                                                                                              "   
    Write-Host "                                               A: Slorvak                                                     "
    Write-Host "                                               B: Prince Valant                                               "
    Write-Host "                                               C: Zanthe                                                      "
    Write-Host "                                               D: Amara                                                       "
    Write-Host "                                                                                                              "
    Write-Host "                     #####################################################################                    "
    Write-Host "                                                                                                              "

    $userResponse = Read-Host -Prompt "                                         Choose your character"

    Write-Host ""

    Switch ($userResponse) 
    { 
            A {$global:playerCharacter = "Slorvak"}
            B {$global:playerCharacter = "Prince Valant"} 
            C {$global:playerCharacter = "Zanthe"} 
            D {$global:playerCharacter = "Amara"} 
            default {$global:playerCharacter = "Slorvak"}
    }

    Write-Host "                                     You selected $global:playerCharacter, lets begin"

    Sleep 3
}

function Accept-TheQuest()
{
    #Clear Console
    clear-host

    #Dragon Slayer
    Write-Host "##############################################################################################################"
    Write-Host "#                                                                                                            #"
    Write-Host "# The King requests your help to slay the dragon they call FireWing.                                         #"
    Write-Host "# FireWing has been woken from a deep slumber and has started terrorising the local villages.                #"
    Write-Host "# The people are scared and have started to leave the kingdom.                                               #"
    Write-Host "#                                                                                                            #"
    Write-Host "##############################################################################################################"
    Write-Host "                                                                                                              "
    
    do
    {
        $userResponse = Read-Host -Prompt "The King must protect his people, are you willing to help? (yes/no) "
    }
    while($userResponse -notlike "Yes" -and $userResponse -notlike "No")
    
    Write-Host ""

    Switch ($userResponse) 
    { 
        "Yes" {Write-Host "The King thanks you $global:playerCharacter, now start your quest!"; Sleep 4; return $true}
        "No"  {Write-Host "Your King is dissapointed and sends you on your way"; Sleep 4; return $false} 
    }
}

function Arrive-AtVillage()
{
    Clear-Host

    Write-Host ""
    Write-Host "After two day's ride you arrive at Florin, a small village on the outskirts of the kingdom."
    Write-Host ""
    Write-Host "You choose Florin to make your stand due to its remote location and nearby army detachment "
    Write-Host "camping nearby." 
    Write-Host ""
    Write-Host "On your arrival do you?"
    Write-Host ""
    Write-Host "A) Talk to the villagers"
    Write-Host "B) Talk to the commander in charge of the local detachment"
    Write-Host ""
    
    do
    {
        $userResponse = Read-Host -Prompt "Answer (A or B)"
    }
    while($userResponse -notlike "A" -and $userResponse -notlike "B")
       
    
    Write-Host ""

    Switch ($userResponse) 
    { 
        "A" {Speak-ToVillagers}
        "B" {Speak-ToDetachment} 
    }
}

function Speak-ToDetachment()
{
    Clear-Host

    if(!$global:playerDragonTip)
    {
        Write-Host ""
        Write-Host "You speak to Cedric who is commanding the local detachment of soldiers."
        Write-Host "Cendric is making his way north to rejoin the rest of the troops but is willing to"
        Write-Host "assist in finding FireWing and suggests waiting until the dragon returns and"
        Write-Host "slay it in combat."
        Write-Host ""
        Write-Host "Press any key to continue."
                
        $continue = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

        Wait-ForDragon
    }
    else
    {
        Write-Host ""
        Write-Host "You speak to Cedric who is commanding the local detachment of soldiers."
        Write-Host "Cendric is making his way north to rejoin the rest of the troops but is willing to"
        Write-Host "assist in finding FireWing."
        Write-Host ""
        Write-Host "You tell Cendric that the local villiagers know where the dragon may be resting at night"
        Write-Host "together you formulate a plan of attack."
        Write-Host ""
        Write-Host "Press any key to continue."
                
        $continue = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

        Attack-DragonWithDetachment
    }

}

function Wait-ForDragon()
{
    Clear-Host

    Write-Host "You setup camp with the detachment and prepare the weapons."
    Write-Host ""
    Write-Host "During the night FireWing attacks the camp and villagers."
    Write-Host "Everyone runs for their life but you are engolfed in flames and dont make it out alive!"
    Write-Host ""
    Write-Host "You have failed to protect the villagers."
    Write-Host ""
    Write-Host "Game Over"
    Write-Host ""
    Write-Host "Press any key to continue"    

    $continue = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
     
}

function Attack-DragonWithDetachment()
{
    Clear-Host

    Write-Host "You ready your weapons and with the villiagers help you formulate a plan."
    Write-Host ""    
    Write-Host "The plan is to setup a large chainmail net over the cave entrance."    
    Write-Host "When FireWing enters the cave to rest you will drop the net to block his escape."    
    Write-Host "The troops will then fire their bows into the cave and slay the dragon!"    
    Write-Host ""    
    Write-Host "You work with Cedric and the troops to prepare the trap and wait in hiding."    
    Write-Host ""    
    Write-Host "During the night FireWing enters the cave and the trap is sprung."    
    Write-Host "Huge arrows are fired into the cave and fire bellows out from the cave entrance"    
    Write-Host "More arrows fly and then silence.."    
    Write-Host "You enter the cave and and find nothing but a pile of ash on the floor."    
    Write-Host "Congratulations! you have defeated FireWing and protected the Kingdom."    
    Write-Host ""    
    Write-Host "You are indeed a cunning and mighty warrior!"    
    Write-Host ""    
    Write-Host "Press any key to continue."    

    $continue = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Attack-DragonOnOwn()
{
    Clear-Host

    Write-Host ""
    Write-Host "After dark Hadrain takes you to the cave and leaves you to investigate."
    Write-Host ""
    Write-Host "You get close to the cave but cant see any sign of FireWing so you move close still."
    Write-Host ""
    Write-Host "Suddenly you hear a noise from behind! you turn quickly and are engolved by flames!"
    Write-Host "FireWing as struck you down with his fire breath and you are turned to ashes."
    Write-Host ""
    Write-Host "Press any key to continue"    

    $continue = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

}

function Speak-ToVillagers()
{
    Clear-Host

    Write-Host ""
    Write-Host "You speak to Hadrain an elder of the village who explains that FireWing has been seen"
    Write-Host "resting in a cave nearby after nightfall."
    Write-Host "He suggests speaking to the local detachment and launching a surprise attack after dark with their help  "
    Write-Host ""
    Write-Host "What do you do next?"
    Write-Host ""
    Write-Host "A) Speak to the detachments commander"
    Write-Host "B) Ask Hadarin to take you to the cave after dark"
    Write-Host ""

    #Player has picked up a tip from the local villagers!
    #This will change the outcome of future decisions
    $global:playerDragonTip = $true

    do
    {
        $userResponse = Read-Host -Prompt "Answer (A or B)"
    }
    while($userResponse -notlike "A" -and $userResponse -notlike "B")
       
    
    Write-Host ""

    Switch ($userResponse) 
    { 
        "A" {Speak-ToDetachment}
        "B" {Attack-DragonOnOwn} 
    }
}

Setup-Display

while($true)
{
    
    Title-Screen

    if(!$global:runGame)
    {
        break
    }
    
    Character-Selection

    $accept = Accept-TheQuest
    if($accept -eq $true)
    {
        Arrive-AtVillage
    }
    else
    {
        #Player Quit
        Write-Host ""
        Write-Host "Thanks for Playing"
        Sleep 3
    }
}



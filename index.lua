while true do
	Graphics.initBlend()
	Screen.clear()
	Graphics.debugPrint(5, 5, "Mail-Function v1.00 by Ali BEYAZ (avalibeyaz.com)", Color.new(0,255,0)) 
	Graphics.debugPrint(15, 45, "Press CIRCLE to install/reinstall", Color.new(0,255,0))	Graphics.debugPrint(15, 65, "Press SQUARE to remove", Color.new(0,255,0)) 
	Graphics.debugPrint(15, 85, "Press TRIANGLE to exit", Color.new(0,255,0)) 
	Graphics.debugPrint(5, 385, "Credits:", Color.new(0,255,0))
	Graphics.debugPrint(15, 405, "-HENkaku & Enso > Team Molecule", Color.new(0,255,0))
    Graphics.debugPrint(15, 425, "-E-Mail app vulnerability > xyzz", Color.new(0,255,0))
    Graphics.debugPrint(15, 445, "-HENkaku Offline Installer > xyzz", Color.new(0,255,0))
	Graphics.debugPrint(15, 465, "-ONELUA > Onelua team", Color.new(0,255,0)) 
	Graphics.debugPrint(15, 485, "-VCAL trick > SilicaAndPina", Color.new(0,255,0))
	Graphics.debugPrint(15, 505, "-Package Manager Enabler > SilicaAndPina", Color.new(0,255,0)) 

	if Controls.check(Controls.read(), SCE_CTRL_TRIANGLE) then
		System.exit()
	end


	if Controls.check(Controls.read(), SCE_CTRL_SQUARE) then 
        Graphics.termBlend() 
	    Graphics.initBlend() 
        System.deleteFile("ux0:email/message/mail.db")
        System.deleteFile("ux0:email/message/00/00/exploit.html")
        System.deleteFile("ux0:picture/henkaku.bin")
        System.deleteFile("ux0:email/message/00/00/pkg.ics")
        System.deleteFile("ux0:email/message/00/00/pkg.txt")
        System.deleteFile("ux0:email/message/00/00/360.ics")
        System.deleteFile("ux0:email/message/00/00/360.txt")
        System.deleteFile("ux0:data/PSP2/UPDATE/PSP2UPDAT.PUP")
        System.deleteFile("ux0:data/PSP2/UPDATE/PupInfo")
        System.deleteFile("ux0:email/message/00/00/uri.ics")
        System.deleteFile("ux0:email/message/00/00/uri.txt")
        System.deleteFile("ux0:email/message/00/00/vitashell.ics")
        System.deleteFile("ux0:email/message/00/00/signup.ics")
        System.deleteFile("ux0:email/message/00/00/signup.txt")
	    Graphics.debugPrint(5, 125, "Removed successfully. Exiting...", Color.new(255,0,0))        Graphics.termBlend() 
	    Screen.flip() 
        System.wait(5000000)
		System.exit()
	end


	if Controls.check(Controls.read(), SCE_CTRL_CIRCLE) then 
        Graphics.termBlend() 
	    Graphics.initBlend() 
	    Graphics.debugPrint(5, 125, "- Cleaning old files...", Color.new(255,0,0))
        System.deleteFile("ux0:email/message/mail.db")
        System.deleteFile("ux0:email/message/00/00/exploit.html")
        System.deleteFile("ux0:picture/henkaku.bin")
        System.deleteFile("ux0:email/message/00/00/pkg.ics")
        System.deleteFile("ux0:email/message/00/00/pkg.txt")
        System.deleteFile("ux0:email/message/00/00/360.ics")
        System.deleteFile("ux0:email/message/00/00/360.txt")
        System.deleteFile("ux0:data/PSP2/UPDATE/PSP2UPDAT.PUP")
        System.deleteFile("ux0:data/PSP2/UPDATE/PupInfo")
        System.deleteFile("ux0:email/message/00/00/uri.ics")
        System.deleteFile("ux0:email/message/00/00/uri.txt")
        System.deleteFile("ux0:email/message/00/00/vitashell.ics")
        System.deleteFile("ux0:email/message/00/00/signup.ics")
        System.deleteFile("ux0:email/message/00/00/signup.txt")
	    Graphics.debugPrint(5, 145, "- Extracting & Copying files...", Color.new(255,0,0))	        Graphics.termBlend() 
	    Screen.flip() 
        System.extractZIP("app0:res/picture.zip", "ux0:picture/")
        System.extractZIP("app0:res/data.zip", "ux0:data/")
        System.extractZIP("app0:res/email.zip", "ux0:email/")
	    Graphics.initBlend() 
	    Graphics.debugPrint(5, 125, "Installed successfully. Exiting...", Color.new(255,0,0))         Graphics.termBlend() 
	    Screen.flip() 
        System.wait(5000000)
		System.exit()
	end


	Graphics.termBlend()
	Screen.flip()
end

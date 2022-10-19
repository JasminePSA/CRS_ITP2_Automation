WinActivate("Open")
Sleep(1000)
WinWaitActive("Open")
ControlSend("Open","","Edit1","c:\users\thomasj1\PycharmProjects\CRSITP2\girl_205263.jpg")
Sleep(3000)
ControlClick("Open","&Open","Button1");
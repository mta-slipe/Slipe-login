local MouseEventArgs = {}

MouseEventArgs.__inherits__ = { System.Windows.Input.InputEventArgs }

createProperties(MouseEventArgs,{ 
	"MouseDevice",
	"StylusDevice",
	"LeftButton",
	"RightButton",
	"MiddleButton",
	"XButton1",
	"XButton2",
})

System.define("System.Windows.Input.MouseEventArgs", MouseEventArgs)
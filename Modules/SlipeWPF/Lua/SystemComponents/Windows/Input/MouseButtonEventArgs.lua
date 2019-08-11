local MouseButtonEventArgs = {}

MouseButtonEventArgs.__inherits__ = { System.Windows.Input.MouseEventArgs }

createProperties(MouseButtonEventArgs,{ 
	"ChangedButton",
	"ButtonState",
	"ClickCount",
})

System.define("System.Windows.Input.MouseButtonEventArgs", MouseButtonEventArgs)